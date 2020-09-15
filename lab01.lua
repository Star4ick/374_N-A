lgi=require 'lgi'

gtk=lgi.Gtk
gtk.init()
bld=gtk.Builder()
bld:add_from_file('lab01.glade')
ui=bld.objects
ui.wind.title='lab-01_ANSON'
ui.wind.on_destroy=gtk.main_quit
ui.wind:show_all()
gtk.main()

