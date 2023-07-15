from moviepy.editor import VideoFileClip
from PIL import Image, ImageSequence
videoClip = VideoFileClip("1.mp4")

videoClip.write_gif("1.gif")

# Output (max) size
size = 320, 140

# Open source
im = Image.open("1.gif")
size=im.size
# Get sequence iterator
frames = ImageSequence.Iterator(im)

# Wrap on-the-fly thumbnail generator
def thumbnails(frames):
    for frame in frames:
        thumbnail = frame.copy()
        thumbnail.thumbnail(size, Image.ANTIALIAS)
        yield thumbnail

frames = thumbnails(frames)

# Save output
om = next(frames) # Handle first frame separately
om.info = im.info # Copy sequence info
om.save("out.gif", save_all=True, append_images=list(frames))