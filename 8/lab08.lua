local lgi=require 'lgi'
local glib=lgi.Glib
local gtk=lgi.Gtk
gtk.init()
local red=require 'redis'
local cli=red.connect('127.0.0.1', 6379)
local t=0
local function on_timer()
t=t+0.1
local x=50+math.cos(t)*25
local y=50+math.sin(t)*25
cli:set('x',x)
cli:set('y',y)

glib.timeout_add(glib.PRIORITY_DEFAULT,10,on_timer)
end
on_timer()
gtk.main()
