#= require jquery-1.6.1
#= require zui53

window.zoomlet = {}
class window.zoomlet.App
  constructor : ()->
    console.log 'make it zoomable'
    
    try
      document.body.scrollTop = 0
      document.body.scrollLeft = 0
    catch e
      console.log "Failed reset scroll offset:", e
    
    zui = new ZUI53.Viewport( $('html')[0] )
    # surface = $('#assets')[0] || $('#content')[0] || $('body')[0]
    surface = $('body')[0]
    zui.addSurface( new ZUI53.Surfaces.CSS( surface ) )

    pan_tool = new ZUI53.Tools.Pan(zui)
    zui.toolset.add( pan_tool )
    pan_tool.attach()