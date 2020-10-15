
lgi = require 'lgi'
gtk = lgi.Gtk
pixbuf = lgi.GdkPixbuf.Pixbuf

gtk.init()

bld = gtk.Builder()
bld:add_from_file('Lab_04.glade')

ui = bld.objects

function ui.btn_add:on_clicked(...)
 name = ui.txtname.text
 value = tonumber(ui.txtvalue.text)
 px = pixbuf.new_from_file('')

 i = ui.list_items:append()
ui.list_items[i] = {[1] = name, [2] = value, [3] = px}
end

rdr_txt = gtk.CellRendererText {}
rdr_pix = gtk.CellRendererPixbuf {}

c1 = gtk.TreeViewColumn { title = 'Name', {rdr_txt, { text = 1}}}
c2 = gtk.TreeViewColumn { title = 'Value', {rdr_txt, { text = 2}}}
c3 = gtk.TreeViewColumn { title = 'Picture', {rdr_pix,{ pixbuf = 3}}}


ui.lst_items:append_column(c1)
ui.lst_items:append_column(c2)
ui.lst_items:append_column(c3)

ui.wnd.title = 'Lab_04'
ui.wnd.on_destroy=gtk.main_quit
ui.wnd:show_all()
gtk.main()
