# -*- coding: utf-8 -*-
# fav&RT

require 'gtk2'

class ::Gdk::MiraclePainter
  def iob_etc_clicked
    world, = Plugin.filtering(:world_current, nil)
    Plugin[:spell].favorite(world, message)
    Plugin[:spell].share(world, message)
  end
end
