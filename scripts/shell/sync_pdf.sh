#!/bin/bash

# ========== CONFIGURATION ==========

# Path where your original .md files are
SOURCE_FOLDER="/Users/narayan/dump/one"

# Path where you want to generate PDFs temporarily
OUTPUT_FOLDER="/Users/narayan/dump/two"

# Final destination inside iCloud
ICLOUD_FOLDER="/Users/narayan/Library/Mobile Documents/com~apple~CloudDocs/Documents"

# Pandoc settings
MAIN_FONT="Sen"
MONO_FONT="Fira Code"

# ========== SCRIPT START ==========

echo "🔄 Starting manual conversion and sync at $(date)"

# Check if pandoc and xelatex are installed
if ! command -v pandoc &>/dev/null; then
   echo "❌ Error: pandoc is not installed."
   exit 1
fi

if ! command -v xelatex &>/dev/null; then
   echo "❌ Error: xelatex is not installed."
   exit 1
fi

# Create OUTPUT_FOLDER if missing
mkdir -p "$OUTPUT_FOLDER"

# Find all .md files recursively
find "$SOURCE_FOLDER" -type f -name "*.md" | while read mdfile; do
   # Calculate relative path
   RELATIVE_PATH="${mdfile#$SOURCE_FOLDER/}"
   RELATIVE_DIR="$(dirname "$RELATIVE_PATH")"
   OUTPUT_DIR="$OUTPUT_FOLDER/$RELATIVE_DIR"
   mkdir -p "$OUTPUT_DIR"

   # Output PDF path
   OUTPUT_PDF="$OUTPUT_DIR/$(basename "${mdfile%.md}.pdf")"

   # Check if conversion is needed
   if [[ ! -f "$OUTPUT_PDF" || "$mdfile" -nt "$OUTPUT_PDF" ]]; then
      echo "📄 Converting: $mdfile -> $OUTPUT_PDF"
      pandoc "$mdfile" -o "$OUTPUT_PDF" --pdf-engine=xelatex \
         -V mainfont="$MAIN_FONT" -V monofont="$MONO_FONT" \
         -V geometry=top=1in,bottom=1in,left=0.7in,right=0.7in

      # Check if conversion succeeded
      if [[ $? -ne 0 ]]; then
         echo "⚠️  Warning: Conversion failed for $mdfile"
         continue
      fi
   else
      echo "✅ Skipping (up-to-date): $mdfile"
   fi
done

# Sync OUTPUT_FOLDER to ICLOUD_FOLDER
echo "☁️  Syncing PDFs to iCloud..."
rsync -av --delete "$OUTPUT_FOLDER/" "$ICLOUD_FOLDER/"

echo "✅ Done! Finished at $(date)"
