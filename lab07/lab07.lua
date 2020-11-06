#!/usr/bin/lua5.3

lgi=require 'lgi'
gtk=lgi.Gtk
cairo=lgi.cairo
gtk.init()
bld=gtk.Builder()
bld:add_from_file('lab07.glade')

ui=bld.objects
v=0
function ui.canvas:on_draw(cr)
cr:set_source_rgb(1, 1, 1)
cr:paint()



for y=0, 10 do

cr:set_source_rgb(0.9, 0.9, 0)
for sch=0 , y do
cr:rectangle(150 ,y*10, 10 ,10)
cr:rectangle(150+sch*10 ,y*10, 10 ,10)
cr:rectangle(150+-sch*10 ,y*10, 10 ,10)
cr:fill()

end

end

if v==1 then
sel_a(cr)

end
if v==2 then
sel_b(cr)

end

return true
end

function sel_a(cr)
cr:set_source_rgb(1, 1, 1)
cr:paint()

s=1

ch=0.2
for x=0, 30  do
cr:set_source_rgb(ch, 0.8, 0.8)
for y=0 ,10 do

cr:rectangle(x*10,y*10,10,10)
cr:fill()
end


if x==5 then 
ch=ch+0.05 end
if x==10 then 
ch=ch+0.05 end
if x==15 then 
ch=ch+0.05 end
if x==20 then 
ch=ch+0.05 end
if x==25 then 
ch=ch+0.05 end
end

for x=0, 30  do
s=s+1
for sch=0 ,s do

cr:rectangle(x*10,100+sch*10,10,10)
cr:fill()
end
if s==4 then s=0 end 

end
ui.canvas:queue_draw()
end


function ui.btn_a:on_clicked()
v=1
end

function sel_b(cr)
cr:set_source_rgb(1, 1, 1)
cr:paint()

for y=0, 10 do

cr:set_source_rgb(y/10, y/10, 0.8)
for sch=0 , y do
cr:rectangle(150 ,y*10, 10 ,10)
cr:rectangle(150+sch*10 ,y*10, 10 ,10)
cr:rectangle(150+-sch*10 ,y*10, 10 ,10)
cr:fill()

end
end
ui.canvas:queue_draw()
end
function ui.btn_a:on_clicked()
v=1
end



function ui.btn_b:on_clicked()
v=2
end






function ui.wnd:on_destroy(...)
gtk.main_quit()
end
ui.wnd:show_all()
gtk.main()

