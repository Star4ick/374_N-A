lgi=require 'lgi'

gtk=lgi.Gtk
gtk.init()
bld=gtk.Builder()
bld:add_from_file('lab02_nesterov474.glade')
ui=bld.objects
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

