import uuid
import vim
from PIL import ImageGrab, Image
import os

if not os.path.exists('.images'):
        os.makedirs('.images')

try:
    im = ImageGrab.grabclipboard()
    id = uuid.uuid4()
    image_name = '.images/{}.jpg'.format(id)
    if isinstance(im, Image.Image):
        im.save(image_name)
    vim.command("let image_name = '%s'" % image_name)
except e:
    print (e)
