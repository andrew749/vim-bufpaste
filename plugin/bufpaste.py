import uuid
import vim
from PIL import ImageGrab, Image
import os

out_path = 'images'

if not os.path.exists(out_path):
        os.makedirs(out_path)

try:
    im = ImageGrab.grabclipboard()
    id = uuid.uuid4()
    image_name = '{}.jpg'.format(id)
    if isinstance(im, Image.Image):
        im.save(os.path.join(out_path,image_name))
    vim.command("let image_name = '%s'" % image_name)
except e:
    print (e)
