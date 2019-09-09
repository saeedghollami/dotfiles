
import os

from libqtile import widget



BASE_DIR = os.path.expanduser('~/.local/bin/statusbar')

class KeyboardLayout(widget.KeyboardLayout):

    def __init__(self, **config):
        super().__init__()

    # def button_press(self, x, y, button):
    #     if button == 1:
    #         self.poll()

    def poll(self):
        cmd = os.path.join(BASE_DIR, 'key_layout')
        layout = self.call_process(cmd).strip()
        icon = u'\uEB79'
        return f'{icon} {layout}'



if __name__ == '__main__':
    x = KeyboardLayout()
    print(x.poll())
