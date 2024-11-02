screencapture -i ~/ocr_snapshot.png

tesseract --dpi 300 ~/ocr_snapshot.png stdout | pbcopy

rm ~/ocr_snapshot.png
