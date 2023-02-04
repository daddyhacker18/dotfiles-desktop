### DEFINE LAYOUTS ###

# import modules
from libqtile import layout
from libqtile.config import Match

# set default theme
layout_theme = {"border_width": 2,
                "margin": 8,
                "border_focus": "e1acff",
                "ratio": 0.58,
                "border_normal": "1D2330"
                }

# define layouts
layouts = [
    layout.MonadThreeCol(**layout_theme),
    layout.MonadTall(**layout_theme),
    layout.Max(**layout_theme),
    layout.Stack(num_stacks=2),
    layout.RatioTile(**layout_theme),
    layout.TreeTab(
         font = "TerminessTTF Nerd Font Bold",
         fontsize = 10,
         sections = ["FIRST", "SECOND", "THIRD", "FOURTH"],
         section_fontsize = 10,
         border_width = 2,
         bg_color = "1c1f24",
         active_bg = "c678dd",
         active_fg = "000000",
         inactive_bg = "a9a1e1",
         inactive_fg = "1c1f24",
         padding_left = 0,
         padding_x = 0,
         padding_y = 5,
         section_top = 10,
         section_bottom = 20,
         level_shift = 8,
         vspace = 3,
         panel_width = 200
         ),
    layout.Floating(border_focus="e1acff", border_normal="1D2330", border_width=2),
]

# set floating layout rules for specific applications
floating_layout = layout.Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    *layout.Floating.default_float_rules,
    Match(wm_class='confirmreset'),         # gitk
    Match(wm_class='makebranch'),           # gitk
    Match(wm_class='maketag'),              # gitk
    Match(wm_class='ssh-askpass'),          # ssh-askpass
    Match(title='branchdialog'),            # gitk
    Match(title='pinentry'),                # GPG key password entry
    Match(title='Confirmation'),            # tastyworks exit box
    Match(title='Qalculate!'),              # calculate-gtk
    Match(title='kdenlive'),                # kdenlive
    Match(title='pinentry-gtk-2'),          # GPG key password entry
])
