from libqtile.config import Key, Screen, Group, Drag, Click
from libqtile.command import lazy
from libqtile import layout, bar, widget

from typing import List  # noqa: F401

import widget2

mod = 'mod4'

keys = [
    # switching between opened windows
    Key(['mod1'], "Tab",lazy.group.next_window()),

    Key([mod], "Left",lazy.group.prevgroup()),
    Key([mod], "Right",lazy.group.nextgroup()),
    # Switch between windows in current stack pane
    Key([mod], 'k', lazy.layout.down()),
    Key([mod], 'j', lazy.layout.up()),

    # Move windows up or down in current stack
    Key([mod, 'shift'], 'k', lazy.layout.shuffle_down()),
    Key([mod, 'shift'], 'j', lazy.layout.shuffle_up()),

    # Chanage window size
    Key([mod, 'control'], "l", lazy.layout.grow()),
    Key([mod, 'control'], "h", lazy.layout.shrink()),
    Key([mod], "n", lazy.layout.normalize()),

    # Switch window focus to other pane(s) of stack
    Key([mod], 'space', lazy.layout.next()),

    # Swap panes of split stack
    Key([mod, 'shift'], 'space', lazy.layout.rotate()),

    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key([mod, 'shift'], 'Return', lazy.layout.toggle_split()),
    Key([mod], 'Return', lazy.spawn('xterm')),

    # Toggle between different layouts as defined below
    Key([mod], 'Tab', lazy.next_layout()),
    Key([mod], 'q', lazy.window.kill()),

    Key([mod, 'shift'], 'r', lazy.restart()),
    Key([mod, 'shift'], 'q', lazy.shutdown()),
    Key([mod], 'r', lazy.spawncmd()),
    
    # toggle floating mode
    Key([mod], 'f', lazy.window.toggle_floating()),
    
    # Media keys
     Key(
        [], 'XF86AudioRaiseVolume',
        lazy.spawn('amixer -c 0 -q set Master 2dB+')
    ),
    Key(
        [], 'XF86AudioLowerVolume',
        lazy.spawn('amixer -c 0 -q set Master 2dB-')
    ),
    Key(
        [], 'XF86AudioMute',
        lazy.spawn('amixer -c 0 -q set Master toggle')
    ),

    # Apps shortcuts
    Key(
        ['mod1', 'control'], 'i', 
        lazy.spawn('subl')
    ),
    Key(
        ['mod1', 'control'], 'f', 
        lazy.spawn('firefox')
    ),
    Key(
        ['mod1', 'control'], 'o', 
        lazy.spawn('code')
    ),
    Key(
        ['mod1', 'control'], 'm', 
        lazy.spawn('xterm -e cmus')
    ),
    Key(
        ['mod1', 'control'], 'r', 
        lazy.spawn('xterm -e ranger')
    ),
    Key(
        ['mod1', 'control'], 's', 
        lazy.spawn('surf')
    ),
    Key(
        ['mod1', 'control'], 'c', 
        lazy.spawn('chromium')
    ),
    
]


groups = [
    Group("1", label=u'\uE8CE'),
    Group("2", label=''),
    Group("3", label=''),
    Group("4", label=u'\uE9FE'), # Edit
    Group("5", label=u'\uEA06'), # Desktop
    Group("6", label=u'\uEA06'), # Desktop 
    Group("7", label=u'\uEA06'), # Desktop 
    Group("8", label=u'\uE944'), # Read
    Group("9", label=u'\uE88F'), # Work
    Group("0", label=u'\uF00F'), # Play

]

for i in groups:
    keys.extend([
        # mod1 + number of group = switch to group
        Key([mod], i.name, lazy.group[i.name].toscreen()),

        # mod1 + shift + number of group = switch to & move focused window to group
        Key([mod, 'shift'], i.name, lazy.window.togroup(i.name)),
    ])

# Colorschems
BLACK_1 = '#101010'
BLACK_2 = '#151515'
GRAY_1 = '#404040'
GRAY_2 = '#505050'
GRAY_3 = '686868'
GRAY_4 = '#8e8e8e'
GRAY_5 = '#979696'
WHITE_1 = '#b9b9b9'
WHITE_2 = '#f7f7f7'
TEAL_1 = '#2aa198'
TEAL_2 = '#009688'

BG = BLACK_1
FG = WHITE_1

BORDER_WIDTH = 3
MARGIN = 15

layout_kw = dict(
    border_focus=WHITE_1,
    border_normal=GRAY_4,
    border_width=BORDER_WIDTH,
    margin=MARGIN
)

layouts = [
    layout.Max(),
    layout.Stack(num_stacks=2, **layout_kw)
]

widget_defaults = dict(
    font='Roboto',
    fontsize=15,
    padding=3,
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.GroupBox(
                    active=WHITE_1,
                    inactive=GRAY_3,
                    this_current_screen_border=WHITE_2,
                    highlight_method='text',
                    urgent_alert_method='text',
                    urgent_text=TEAL_2,
                ),
                widget.Spacer(),
                widget.Prompt(
                    prompt="run: ",
                ),
                widget.CurrentLayout(),
                widget.Systray(),
                widget.Volume(),
                widget.Clock(format='%Y-%m-%d %a %I:%M %p'),

            ],
            28,
            background=BLACK_1
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], 'Button1', lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], 'Button3', lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], 'Button2', lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
main = None
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(float_rules=[
    {'wmclass': 'confirm'},
    {'wmclass': 'dialog'},
    {'wmclass': 'download'},
    {'wmclass': 'error'},
    {'wmclass': 'file_progress'},
    {'wmclass': 'notification'},
    {'wmclass': 'splash'},
    {'wmclass': 'toolbar'},
    {'wmclass': 'confirmreset'},  # gitk
    {'wmclass': 'makebranch'},  # gitk
    {'wmclass': 'maketag'},  # gitk
    {'wname': 'branchdialog'},  # gitk
    {'wname': 'pinentry'},  # GPG key password entry
    {'wmclass': 'ssh-askpass'},  # ssh-askpass
])
auto_fullscreen = False
focus_on_window_activation = 'smart'
bring_front_click = True


wmname = 'LG3D'
