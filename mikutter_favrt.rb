# -*- coding: utf-8 -*-
# fav&RT

require 'gtk2'

class ::Gdk::MiraclePainter
  def iob_etc_clicked
    if !message.favorite? then
      message.favorite(true)
    end 
    if !message.retweet? || !message.retweeted_statuses.find(&:from_me?) then
      message.retweet
    end
  end
end
