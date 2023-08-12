export PATH="/opt/homebrew/bin:/usr/local/bin:${PATH}"

screencapture -i /tmp/ocr_snapshot.png

if [{query} = ""]; then
   tesseract --dpi 300 /tmp/ocr_snapshot.png stdout 2>&1
else
   tesseract --dpi 300 /tmp/ocr_snapshot.png stdout -l {query} 2>&1
fi

#then copy the output to the clipboard
