# Copyright (C) 2009-2013  Roman Zimbelmann <hut@hut.pm>
# This software is distributed under the terms of the GNU GPL version 3.

from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import *

class Default(ColorScheme):
    progress_bar_color = 14

    def use(self, context):
        fg, bg, attr = default_colors

        if context.reset:
            return default_colors

        elif context.in_browser:
            if context.selected:
                attr = reverse
            else:
                attr = normal
            if context.empty or context.error:
                bg = 9
            if context.border:
                fg = default
            if context.media:
                if context.image:
                    fg = yellow
                else:
                    fg = 14
            if context.container:
                fg = 9
            if context.directory:
                attr |= bold
                fg = 13
            elif context.executable and not \
                    any((context.media, context.container,
                        context.fifo, context.socket)):
                attr |= bold
                fg = green
            if context.socket:
                fg = 14
                attr |= bold
            if context.fifo or context.device:
                fg = yellow
                if context.device:
                    attr |= bold
            if context.link:
                fg = context.good and cyan or 14
            if context.tag_marker and not context.selected:
                attr |= bold
                if fg in (9, magenta):
                    fg = white
                else:
                    fg = 9
            if not context.selected and (context.cut or context.copied):
                fg = black
                attr |= bold
            if context.main_column:
                if context.selected:
                    attr |= bold
                if context.marked:
                    attr |= bold
                    fg = yellow
            if context.badinfo:
                if attr & reverse:
                    bg = magenta
                else:
                    fg = magenta

        elif context.in_titlebar:
            attr |= bold
            if context.hostname:
                fg = context.bad and 9 or green
            elif context.directory:
                fg = 13
            elif context.tab:
                if context.good:
                    bg = green
            elif context.link:
                fg = cyan

        elif context.in_statusbar:
            if context.permissions:
                if context.good:
                    fg = cyan
                elif context.bad:
                    fg = magenta
            if context.marked:
                attr |= bold | reverse
                fg = yellow
            if context.message:
                if context.bad:
                    attr |= bold
                    fg = 9
            if context.loaded:
                bg = self.progress_bar_color
            if context.vcsinfo:
                fg = 12
                attr &= ~bold
            if context.vcscommit:
                fg = yellow
                attr &= ~bold


        if context.text:
            if context.highlight:
                attr |= reverse

        if context.in_taskview:
            if context.title:
                fg = 12

            if context.selected:
                attr |= reverse

            if context.loaded:
                if context.selected:
                    fg = self.progress_bar_color
                else:
                    bg = self.progress_bar_color


        if context.vcsfile and not context.selected:
            attr &= ~bold
            if context.vcsconflict:
                fg = magenta
            elif context.vcschanged:
                fg = 9
            elif context.vcsunknown:
                fg = 9
            elif context.vcsstaged:
                fg = green
            elif context.vcssync:
                fg = green
            elif context.vcsigno9:
                fg = default

        elif context.vcsremote and not context.selected:
            attr &= ~bold
            if context.vcssync:
                fg = green
            elif context.vcsbehind:
                fg = 9
            elif context.vcsahead:
                fg = 12
            elif context.vcsdiverged:
                fg = magenta
            elif context.vcsunknown:
                fg = 9

        return fg, bg, attr
