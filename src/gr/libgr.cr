module GR
  @[Link("GR")]
  lib LibGR
    fun gr_initgr : Void
    fun gr_opengks : Void
    fun gr_closegks : Void
    fun gr_inqdspsize(Float64*, Float64*, Int32*, Int32*) : Void
    fun gr_openws(Int32, UInt8*, Int32) : Void
    fun gr_closews(Int32) : Void
    fun gr_activatews(Int32) : Void
    fun gr_deactivatews(Int32) : Void
    fun gr_configurews : Void
    fun gr_clearws : Void
    fun gr_updatews : Void
    fun gr_polyline(Int32, Float64*, Float64*) : Void
    fun gr_polymarker(Int32, Float64*, Float64*) : Void
    fun gr_text(Float64, Float64, UInt8*) : Void
    fun gr_inqtext(Float64, Float64, UInt8*, Float64*, Float64*) : Void
    fun gr_fillarea(Int32, Float64*, Float64*) : Void
    fun gr_cellarray(Float64, Float64, Float64, Float64, Int32, Int32, Int32, Int32, Int32, Int32, Int32*) : Void
    fun gr_nonuniformcellarray(Float64*, Float64*, Int32, Int32, Int32, Int32, Int32, Int32, Int32*) : Void
    fun gr_polarcellarray(Float64, Float64, Float64, Float64, Float64, Float64, Int32, Int32, Int32, Int32, Int32, Int32, Int32*) : Void
    fun gr_nonuniformpolarcellarray(Float64, Float64, Float64*, Float64*, Int32, Int32, Int32, Int32, Int32, Int32, Int32*) : Void
    fun gr_gdp(Int32, Float64*, Float64*, Int32, Int32, Int32*) : Void
    fun gr_spline(Int32, Float64*, Float64*, Int32, Int32) : Void
    fun gr_gridit(Int32, Float64*, Float64*, Float64*, Int32, Int32, Float64*, Float64*, Float64*) : Void
    fun gr_setlinetype(Int32) : Void
    fun gr_inqlinetype(Int32*) : Void
    fun gr_setlinewidth(Float64) : Void
    fun gr_inqlinewidth(Float64*) : Void
    fun gr_setlinecolorind(Int32) : Void
    fun gr_inqlinecolorind(Int32*) : Void
    fun gr_setmarkertype(Int32) : Void
    fun gr_inqmarkertype(Int32*) : Void
    fun gr_setmarkersize(Float64) : Void
    fun gr_inqmarkersize(Float64*) : Void
    fun gr_setmarkercolorind(Int32) : Void
    fun gr_inqmarkercolorind(Int32*) : Void
    fun gr_settextfontprec(Int32, Int32) : Void
    fun gr_setcharexpan(Float64) : Void
    fun gr_setcharspace(Float64) : Void
    fun gr_settextcolorind(Int32) : Void
    fun gr_inqtextcolorind(Int32*) : Void
    fun gr_setcharheight(Float64) : Void
    fun gr_inqcharheight(Float64*) : Void
    fun gr_setcharup(Float64, Float64) : Void
    fun gr_settextpath(Int32) : Void
    fun gr_settextalign(Int32, Int32) : Void
    fun gr_setfillintstyle(Int32) : Void
    fun gr_inqfillintstyle(Int32*) : Void
    fun gr_setfillstyle(Int32) : Void
    fun gr_inqfillstyle(Int32*) : Void
    fun gr_setfillcolorind(Int32) : Void
    fun gr_inqfillcolorind(Int32*) : Void
    fun gr_setcolorrep(Int32, Float64, Float64, Float64) : Void
    fun gr_setwindow(Float64, Float64, Float64, Float64) : Void
    fun gr_inqwindow(Float64*, Float64*, Float64*, Float64*) : Void
    fun gr_setviewport(Float64, Float64, Float64, Float64) : Void
    fun gr_inqviewport(Float64*, Float64*, Float64*, Float64*) : Void
    fun gr_selntran(Int32) : Void
    fun gr_setclip(Int32) : Void
    fun gr_setwswindow(Float64, Float64, Float64, Float64) : Void
    fun gr_setwsviewport(Float64, Float64, Float64, Float64) : Void
    fun gr_createseg(Int32) : Void
    fun gr_copysegws(Int32) : Void
    fun gr_redrawsegws : Void
    fun gr_setsegtran(Int32, Float64, Float64, Float64, Float64, Float64, Float64, Float64) : Void
    fun gr_closeseg : Void
    fun gr_emergencyclosegks : Void
    fun gr_updategks : Void
    fun gr_setspace(Float64, Float64, Int32, Int32) : Int32
    fun gr_inqspace(Float64*, Float64*, Int32*, Int32*) : Void
    fun gr_setscale(Int32) : Int32
    fun gr_inqscale(Int32*) : Void
    fun gr_textext(Float64, Float64, UInt8*) : Int32
    fun gr_inqtextext(Float64, Float64, UInt8*, Float64*, Float64*) : Void
    fun gr_axes(Float64, Float64, Float64, Float64, Int32, Int32, Float64) : Void
    # fun gr_axeslbl(Float64, Float64, Float64, Float64, Int32, Int32, Float64, , ) : Void
    fun gr_grid(Float64, Float64, Float64, Float64, Int32, Int32) : Void
    fun gr_grid3d(Float64, Float64, Float64, Float64, Float64, Float64, Int32, Int32, Int32) : Void
    fun gr_verrorbars(Int32, Float64*, Float64*, Float64*, Float64*) : Void
    fun gr_herrorbars(Int32, Float64*, Float64*, Float64*, Float64*) : Void
    fun gr_polyline3d(Int32, Float64*, Float64*, Float64*) : Void
    fun gr_polymarker3d(Int32, Float64*, Float64*, Float64*) : Void
    fun gr_axes3d(Float64, Float64, Float64, Float64, Float64, Float64, Int32, Int32, Int32, Float64) : Void
    fun gr_titles3d(UInt8*, UInt8*, UInt8*) : Void
    fun gr_surface(Int32, Int32, Float64*, Float64*, Float64*, Int32) : Void
    fun gr_contour(Int32, Int32, Int32, Float64*, Float64*, Float64*, Float64*, Int32) : Void
    fun gr_contourf(Int32, Int32, Int32, Float64*, Float64*, Float64*, Float64*, Int32) : Void
    fun gr_tricontour(Int32, Float64*, Float64*, Float64*, Int32, Float64*) : Void
    fun gr_hexbin(Int32, Float64*, Float64*, Int32) : Int32
    fun gr_setcolormap(Int32) : Void
    fun gr_inqcolormap(Int32*) : Void
    fun gr_setcolormapfromrgb(Int32, Float64*, Float64*, Float64*, Float64*) : Void
    fun gr_colorbar : Void
    fun gr_inqcolor(Int32, Int32*) : Void
    fun gr_inqcolorfromrgb(Float64, Float64, Float64) : Int32
    fun gr_hsvtorgb(Float64, Float64, Float64, Float64*, Float64*, Float64*) : Void
    fun gr_tick(Float64, Float64) : Float64
    fun gr_validaterange(Float64, Float64) : Int32
    fun gr_adjustlimits(Float64*, Float64*) : Void
    fun gr_adjustrange(Float64*, Float64*) : Void
    fun gr_beginprint(UInt8*) : Void
    fun gr_beginprintext(UInt8*, UInt8*, UInt8*, UInt8*) : Void
    fun gr_endprint : Void
    fun gr_ndctowc(Float64*, Float64*) : Void
    fun gr_wctondc(Float64*, Float64*) : Void
    fun gr_wc3towc(Float64*, Float64*, Float64*) : Void
    fun gr_drawrect(Float64, Float64, Float64, Float64) : Void
    fun gr_fillrect(Float64, Float64, Float64, Float64) : Void
    fun gr_drawarc(Float64, Float64, Float64, Float64, Float64, Float64) : Void
    fun gr_fillarc(Float64, Float64, Float64, Float64, Float64, Float64) : Void
    # fun gr_drawpath(Int32, *, *, Int32) : Void
    fun gr_setarrowstyle(Int32) : Void
    fun gr_setarrowsize(Float64) : Void
    fun gr_drawarrow(Float64, Float64, Float64, Float64) : Void
    fun gr_readimage(UInt8*, Int32*, Int32*, Int32**) : Int32
    fun gr_drawimage(Float64, Float64, Float64, Float64, Int32, Int32, Int32*, Int32) : Void
    fun gr_importgraphics(UInt8*) : Int32
    fun gr_setshadow(Float64, Float64, Float64) : Void
    fun gr_settransparency(Float64) : Void
    # fun gr_setcoordxform() : Void
    fun gr_begingraphics(UInt8*) : Void
    fun gr_endgraphics : Void
    fun gr_getgraphics : UInt8*
    fun gr_drawgraphics(UInt8*) : Int32
    fun gr_mathtex(Float64, Float64, UInt8*) : Void
    fun gr_inqmathtex(Float64, Float64, UInt8*, Float64*, Float64*) : Void
    fun gr_beginselection(Int32, Int32) : Void
    fun gr_endselection : Void
    fun gr_moveselection(Float64, Float64) : Void
    fun gr_resizeselection(Int32, Float64, Float64) : Void
    fun gr_inqbbox(Float64*, Float64*, Float64*, Float64*) : Void
    fun gr_precision : Float64
    fun gr_setregenflags(Int32) : Void
    fun gr_inqregenflags : Int32
    fun gr_savestate : Void
    fun gr_restorestate : Void
    fun gr_selectcontext(Int32) : Void
    fun gr_destroycontext(Int32) : Void
    fun gr_uselinespec(UInt8*) : Int32
    fun gr_delaunay(Int32, Float64*, Float64*, Int32*, Int32**) : Void
    fun gr_reducepoints(Int32, Float64*, Float64*, Int32, Float64*, Float64*) : Void
    fun gr_trisurface(Int32, Float64*, Float64*, Float64*) : Void
    fun gr_gradient(Int32, Int32, Float64*, Float64*, Float64*, Float64*, Float64*) : Void
    fun gr_quiver(Int32, Int32, Float64*, Float64*, Float64*, Float64*, Int32) : Void
    fun gr_interp2(Int32, Int32, Float64*, Float64*, Float64*, Int32, Int32, Float64*, Float64*, Float64*, Int32, Float64) : Void
    fun gr_version : UInt8*
    fun gr_shade(Int32, Float64*, Float64*, Int32, Int32, Float64*, Int32, Int32, Int32*) : Void
    fun gr_shadepoints(Int32, Float64*, Float64*, Int32, Int32, Int32) : Void
    fun gr_shadelines(Int32, Float64*, Float64*, Int32, Int32, Int32) : Void
    fun gr_panzoom(Float64, Float64, Float64, Float64, Float64*, Float64*, Float64*, Float64*) : Void
    # fun gr_findboundary(Int32, Float64*, Float64*, Float64, , Int32, Int32*) : Int32
    fun gr_setresamplemethod(UInt32) : Void
    fun gr_inqresamplemethod(UInt32*) : Void
    fun gr_path(Int32, Float64*, Float64*, UInt8*) : Void
    fun gr_setborderwidth(Float64) : Void
    fun gr_inqborderwidth(Float64*) : Void
    fun gr_setbordercolorind(Int32) : Void
    fun gr_inqbordercolorind(Int32*) : Void
    fun gr_selectclipxform(Int32) : Void
    fun gr_inqclipxform(Int32*) : Void
    fun gr_setprojectiontype(Int32) : Void
    fun gr_inqprojectiontype(Int32*) : Void
    fun gr_setperspectiveprojection(Float64, Float64, Float64) : Void
    fun gr_inqperspectiveprojection(Float64*, Float64*, Float64*) : Void
    fun gr_settransformationparameters(Float64, Float64, Float64, Float64, Float64, Float64, Float64, Float64, Float64) : Void
    fun gr_inqtransformationparameters(Float64*, Float64*, Float64*, Float64*, Float64*, Float64*, Float64*, Float64*, Float64*) : Void
    fun gr_setorthographicprojection(Float64, Float64, Float64, Float64, Float64, Float64) : Void
    fun gr_inqorthographicprojection(Float64*, Float64*, Float64*, Float64*, Float64*, Float64*) : Void
    fun gr_camerainteraction(Float64, Float64, Float64, Float64) : Void
    fun gr_setwindow3d(Float64, Float64, Float64, Float64, Float64, Float64) : Void
    fun gr_inqwindow3d(Float64*, Float64*, Float64*, Float64*, Float64*, Float64*) : Void
    fun gr_setscalefactors3d(Float64, Float64, Float64) : Void
    fun gr_inqscalefactors3d(Float64*, Float64*, Float64*) : Void
    fun gr_setspace3d(Float64, Float64, Float64, Float64) : Void
    fun gr_text3d(Float64, Float64, Float64, UInt8*, Int32) : Void
    fun gr_inqtext3d(Float64, Float64, Float64, UInt8*, Int32, Float64*, Float64*) : Void
    fun gr_settextencoding(Int32) : Void
    fun gr_inqtextencoding(Int32*) : Void
    fun gr_loadfont(UInt8*, Int32*) : Void
    # fun gr_setcallback() : Void
  end
end
