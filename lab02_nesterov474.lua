gi=require 'lgi'
gtk=lgi.Gtk
gdk=lgi.Gdk
gtk.init()

bld=gtk.Builder()
bld:add_from_file('lab-02.glade')
ui=bld.objects

prov=gtk.CssProvider()
prov:load_from_path('test.css')

ctx=gtk.StyleContext()
scr=gdk.Screen.get_default()
ctx.add_provider_for_screen(scr,prov,gtk.STYLE_PROVIDER_PRIORITY_APPLICATION)
opt={ui.opt_a,ui.opt_b,ui.opt_c,ui.opt_d,ui.opt_e,ui.opt_f,ui.opt_g,ui.opt_h}

function ui.sumbtn:on_clicked()
  a = tonumber(ui.ina.text) 
  b = tonumber(ui.inb.text)
if(a == nil or b == nil )then ui.res.label = "don't crash" else 
  ui.res.label = a + b end
end
function ui.subbtn:on_clicked()
  a = tonumber(ui.ina.text) 
  b = tonumber(ui.inb.text) 
if(a == nil or b == nil )then ui.res.label = "don't crash" else 
  ui.res.label = a - b end
end
function ui.mulbtn:on_clicked()
  a = tonumber(ui.ina.text) 
  b = tonumber(ui.inb.text) 
if(a == nil or b == nil )then ui.res.label = "don't crash" else 
  ui.res.label = a * b  end
end
function ui.divbtn:on_clicked()
  a = tonumber(ui.ina.text) 
  b = tonumber(ui.inb.text) 
if(a == nil or b == nil )then ui.res.label = "don't crash" else 
if(b==0) then ui.res.label = "you use 0";else
  ui.res.label = a / b; end end
end
function ui.sinbtn:on_clicked()
  a = tonumber(ui.inrad.text) 
if(a == nil)then ui.res.label = "don't crash" else 
  ui.res.label = string.format("%.3f", math.sin(a)) end
end
function ui.cosbtn:on_clicked()
  a = tonumber(ui.inrad.text) 
if(a == nil)then ui.res.label = "don't crash" else 
  ui.res.label = string.format("%.3f", math.cos(a)) end
end
function ui.tanbtn:on_clicked()
  a = tonumber(ui.inrad.text) 
if(a == nil)then ui.res.label = "don't crash" else 
  ui.res.label = string.format("%.3f", math.tan(a)) end
end
function ui.degbtn:on_clicked()
  a = tonumber(ui.ina.text)
  b = tonumber(ui.inb.text)  
if(a == nil)then ui.res.label = "don't crash" else 
  ui.res.label = math.pow(a, b) end
end
ui.wind.title='lab-02_Nesterov'
ui.wind.on_destroy=gtk.main_quit
ui.wind:show_all()
gtk.main()

