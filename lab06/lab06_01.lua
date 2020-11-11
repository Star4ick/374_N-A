lgi = require 'lgi'
sqlite = require 'lsqlite3'

gtk = lgi.Gtk
pixbuf = lgi.GdkPixbuf.Pixbuf

gtk.init()

bld = gtk.Builder()
bld:add_from_file('lab06.glade')

ui = bld.objects

rdr_txt = gtk.CellRendererText {}
rdr_pix = gtk.CellRendererPixbuf {}

c1 = gtk.TreeViewColumn { title = 'Name', {rdr_txt, {text = 1}}	}
c2 = gtk.TreeViewColumn { title = 'Age', {rdr_txt, {text = 2}}	}
c3 = gtk.TreeViewColumn { title = 'Avatar', {rdr_pix, {pixbuf = 3}}	}

ui.list_items:append_column(c1)
ui.list_items:append_column(c2)
ui.list_items:append_column(c3)

local base = 'lab06'
local sql = 'SELECT * FROM employee'
f = io.popen('sqlite3 ' .. base .. '.db "' .. sql .. '"')
while true do
local row = f:read('*l')
print(row)
if row == nil then break end
local _, _, account, cash, avatar = row:find('(%w+)|(%d+)|(.-)$')
px = pixbuf.new_from_file(avatar)
el = ui.store_items:append()
ui.store_items[el] = {[1] = account, [2] = cash, [3] = px}
end
f:close()
ui.wnd.title='lab-06_Anson474'
ui.wnd.on_destroy=gtk.main_quit
ui.wnd:show_all()
gtk.main()
