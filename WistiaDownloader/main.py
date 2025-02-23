﻿import re
import subprocess
from pathlib import Path

def download_video(video_id: str, title: str, section: str, index: int):
    """Download a single video from Wistia."""
    try:
        # Create output directory
        output_dir = Path("downloads") / section
        output_dir.mkdir(parents=True, exist_ok=True)
        
        # Clean filename and add index
        clean_title = re.sub(r'[<>:"/\\|?*]', '', title)
        filename = f"{clean_title}.mp4"
        output_path = output_dir / filename
        
        print(f"\nDownloading: {filename}")
        print(f"Section: {section}")
        
        # Download using youtube-dl
        url = f"http://fast.wistia.net/embed/iframe/{video_id}"
        cmd = [
            "yt-dlp",  # Using yt-dlp instead of youtube-dl for better performance
            # Format selection
            "-f", "bestvideo[height<=720][ext=mp4]+bestaudio[ext=m4a]/best[height<=720][ext=mp4]/best",
            
            # Download settings
            "--retries", "5",
            "--fragment-retries", "5",
            "--retry-sleep", "5",
            "--buffer-size", "16K",
            "-c",  # Continue partial downloads
            
            # Rate limiting to prevent timeouts
            "--limit-rate", "5M",
            
            # Concurrent fragments
            "--concurrent-fragments", "4",
            
            # FFmpeg post-processing for smaller file size
            "--postprocessor-args",
            "-c:v libx264 -crf 28 -preset faster -tune fastdecode -movflags +faststart -profile:v baseline -level 3.0 -c:a aac -b:a 96k -ar 44100 -ac 2",
            
            # Error handling
            "--no-warnings",
            "--no-check-certificate",
            
            # Progress monitoring
            "--progress",
            "--console-title",
            
            # Output
            "-o", str(output_path),
            url
        ]
        
        subprocess.run(cmd, check=True)
        print(f"✓ Downloaded: {filename}")
        return True
        
    except subprocess.CalledProcessError as e:
        print(f"Error downloading {title}: {e}")
        return False

def process_file(filename: str):
    """Process the input file."""
    try:
        with open(filename, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Split into sections
        sections = re.split(r'(?=SECTION:)', content.strip())
        
        for section in sections:
            if not section.strip():
                continue
                
            # Get section name
            section_match = re.match(r'SECTION:\s*(.+?)(?:\n|$)', section)
            if not section_match:
                continue
            
            section_name = section_match.group(1).strip()
            print(f"\nProcessing section: {section_name}")
            
            # Get all titles and video IDs in this section
            titles = re.finditer(r'TITLE:\s*(.+?)(?:\n|$)', section)
            video_ids = re.finditer(r'wvideo=([a-zA-Z0-9]+)', section)
            
            # Pair them up and download
            for index, (title_match, video_match) in enumerate(zip(titles, video_ids), 1):
                title = title_match.group(1).strip()
                video_id = video_match.group(1)
                
                print(f"\nVideo {index}:")
                print(f"Title: {title}")
                print(f"ID: {video_id}")
                
                download_video(video_id, title, section_name, index)
                
    except Exception as e:
        print(f"Error processing file: {e}")

def main():
    import sys
    if len(sys.argv) != 2:
        print("Usage: python script.py links.txt")
        return
    
    print("Wistia Video Downloader")
    print("----------------------")
    process_file(sys.argv[1])

if __name__ == "__main__":
    main()