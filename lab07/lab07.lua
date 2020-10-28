#!/usr/bin/lua5.3

lgi=require 'lgi'
gtk=lgi.Gtk
cairo=lgi.cairo
gtk.init()
bld=gtk.Builder()
bld:add_from_file('lab07.glade')

ui=bld.objects

function ui.canvas:on_draw(cr)
cr:set_source_rgb(1, 1, 1)
cr:paint()
for y=0, 10 do

cr:set_source_rgb(0.9, 0.9, 0.)
for sch=0 , y do
cr:rectangle(150 ,y*15, 10 ,10)
cr:rectangle(150+sch*15 ,y*15, 10 ,10)
cr:rectangle(150+-sch*15 ,y*15, 10 ,10)
cr:fill()

end
end
return true
end

function ui.btn_a:on_clicked(...)
GtkDrawingArea:queue_draw()
end

function GtkDrawingArea:queue_draw()
GtkDrawingArea:on_draw(cr)
cr:set_source_rgb(1, 1, 1)
cr:paint()
for y=0, 10 do

cr:set_source_rgb(0.9, 0.9, 0.)
for sch=0 , y do
cr:rectangle(150 ,y*15, 10 ,10)
cr:rectangle(150+sch*15 ,y*15, 10 ,10)
cr:rectangle(150+-sch*15 ,y*15, 10 ,10)
cr:fill()

end
end
return true

end

function ui.wnd:on_destroy(...)
gtk.main_quit()
end
ui.wnd:show_all()
gtk.main()

