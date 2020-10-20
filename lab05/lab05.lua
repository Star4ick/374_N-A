#!/usr/bin/lua5.3

lgi=require 'lgi'
gtk=lgi.Gtk
gtk.init()
bld=gtk.Builder()
bld:add_from_file('lab05.glade')
ui=bld.objects

function ui.btn_open:on_clicked(...)

ui.wnd2:show_all()
end

function ui.btn_close:on_clicked(...)
ui.wnd2:hide()
end

function ui.btn_open2:on_clicked(...)
test=gtk.MessageDialog
{
message_type=gtk.MessageType.INFO,
buttons=gtk.ButtonsType.OK,
text="message",
secondary_text="test"

}
test:run()
test:close()
end
ui.wnd.title='lab-05_Nesterov'
ui.wnd2.title='lab-02_Nesterov474_2'
ui.wnd.on_destroy=gtk.main_quit
ui.wnd:show_all()
gtk.main()
