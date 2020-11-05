lgi = require 'lgi'
sqlite = require 'lsqlite3'

gtk = lgi.Gtk
pixbuf = lgi.GdkPixbuf

gtk.init()

bld = gtk.Builder()
bld:add_from_file('lab06.glade')

ui = bld.objects

rdr_txt = gtk.CellRendererText {}
rdr_pix = gtk.CellRendererPixbuf {}

c1 = gtk.TreeViewColumn { title = 'Account', {rdr_txt, {text = 1}}	}
c2 = gtk.TreeViewColumn { title = 'Money', {rdr_txt, {text = 2}}	}
c3 = gtk.TreeViewColumn { title = 'Avatar', {rdr_pix, {pixbuf = 3}}	}

ui.list_items:append_column(c1)
ui.list_items:append_column(c2)
ui.list_items:append_column(c3)

db = sqlite.open('lab06.db')

for row in db:nrows('SELECT * FROM game') do
px = pixbuf.new_from_file(row.avatar)

el = ui.store_items:append()
ui.store_items[el] = {[1] = row.account, [2] = row.money, [3] = px}
end
db:close()
ui.wnd.title='lab-06_Anson474'
ui.wnd.on_destroy=gtk.main_quit
ui.wnd:show_all()
gtk.main()
