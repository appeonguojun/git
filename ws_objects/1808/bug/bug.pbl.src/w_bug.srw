$PBExportHeader$w_bug.srw
forward
global type w_bug from window
end type
type cb_1 from commandbutton within w_bug
end type
type st_ds from statictext within w_bug
end type
type cb_dw from commandbutton within w_bug
end type
type st_dw from statictext within w_bug
end type
type dw from datawindow within w_bug
end type
type ln_1 from line within w_bug
end type
end forward

global type w_bug from window
integer width = 1202
integer height = 1248
boolean titlebar = true
string title = "Bug"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_1 cb_1
st_ds st_ds
cb_dw cb_dw
st_dw st_dw
dw dw
ln_1 ln_1
end type
global w_bug w_bug

on w_bug.create
this.cb_1=create cb_1
this.st_ds=create st_ds
this.cb_dw=create cb_dw
this.st_dw=create st_dw
this.dw=create dw
this.ln_1=create ln_1
this.Control[]={this.cb_1,&
this.st_ds,&
this.cb_dw,&
this.st_dw,&
this.dw,&
this.ln_1}
end on

on w_bug.destroy
destroy(this.cb_1)
destroy(this.st_ds)
destroy(this.cb_dw)
destroy(this.st_dw)
destroy(this.dw)
destroy(this.ln_1)
end on

type cb_1 from commandbutton within w_bug
integer y = 976
integer width = 1143
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "DataStore InsertRows and Sorting"
end type

event clicked;LONG		i, Row
datastore	ds

	ds = CREATE datastore
	ds.DataObject = "dw_bug"
	
	FOR i = 1 TO 5
		Row = ds.InsertRow(0)
		ds.SetItem(Row, "nr", String(i))
		ds.SetItem(Row, "zendpr", i)
	NEXT
	
	ds.SetSort("c_per DESC")
	ds.Sort()
	
	IF isValid(ds) THEN DESTROY ds
	RETURN 0
end event

type st_ds from statictext within w_bug
integer y = 896
integer width = 1143
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "DataStore - Sorting isn~'t working"
alignment alignment = center!
boolean focusrectangle = false
end type

type cb_dw from commandbutton within w_bug
integer y = 688
integer width = 1143
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "DataWindow InsertRows and Sorting"
end type

event clicked;LONG		i, Row
	
	FOR i = 1 TO 5
		Row = dw.InsertRow(0)
		dw.SetItem(Row, "nr", String(i))
		dw.SetItem(Row, "zendpr", i)
	NEXT
	
	dw.SetSort("c_per DESC")
	dw.Sort()
	
	RETURN 0
end event

type st_dw from statictext within w_bug
integer width = 1143
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "DataWindow - Sorting is working"
alignment alignment = center!
boolean focusrectangle = false
end type

type dw from datawindow within w_bug
integer y = 80
integer width = 1143
integer height = 596
integer taborder = 10
string title = "none"
string dataobject = "dw_bug"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type ln_1 from line within w_bug
long linecolor = 33554432
integer linethickness = 4
integer beginy = 864
integer endx = 1143
integer endy = 864
end type

