set quality $argv[1]
set url $argv[2]

switch $quality
    case hd
        yt-dlp -f "bv*[height<=720]+ba/best[height<=720]" -o "%(title)s.%(ext)s" $url
    case fhd
        yt-dlp -f "bv*[height<=1080]+ba/best[height<=1080]" -o "%(title)s.%(ext)s" $url
    case mp3
        yt-dlp -f ba -x --audio-format mp3 -o "%(artist, uploader)s - %(title)s.%(ext)s" $url
    case opus
        yt-dlp -f ba -x --audio-format opus -o "%(artist, uploader)s - %(title)s.%(ext)s" $url
    case '*'
        echo "Usage: ydl {hd|fhd|mp3|opus} <url>"
        return 1
end
