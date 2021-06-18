// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
{$mode delphi}
unit LazVision;

interface

type
	LazColorArray = Array[0..255, 0..255, 0..255] of Byte;
	
type
	// TObject is the base of all classes of Qt5
	LazObject = class
	public
		ClassName: LazString;
		constructor Create;
		destructor Destroy;
	end;

type
	LazColor = class(LazObject)
	public
		function  clBlack:   LazColorArray;
		function  clBlue:    LazColorArray;
		function  clFuchsia: LazColorArray;
		function  clGray:    LazColorArray;
		function  clGreen:   LazColorArray;
		function  clLime:    LazColorArray;
		function  clBrown:   LazColorArray;
		function  clNavy:    LazColorArray;
		function  clOlive:   LazColorArray;
		function  clPurple:  LazColorArray;
		function  clRed:     LazColorArray;
		function  clSilver:  LazColorArray;
		function  clTeal:    LazColorArray;
		function  clCyan:    LazColorArray;
		function  clYellow:  LazColorArray;
		function  clWhite:   LazColorArray;

		constructor Create;
		destructor Destroy;
	end;
		
	LazPalette = class(LazObject)
	private
		FForeground: LazColor;
		FBackground: LazColor;
	private
		procedure setForeground(v: LazColor);
		procedure setBackground(v: LazColor);
	public
		constructor Create;
		destructor Destroy;
	published
		property Background: LazColor read FBackground write setBackground;
		property Foreground: LazColor read FForeground write setForeground;
	end;
	
type
	LazMenuBar = class(LazObject)
	public
		constructor Create;
		destructor Destroy;
	end;

type
	LazStatusBar = class(LazObject)
	public
		constructor Create;
		destructor Destroy;
	end;

type
	LazBackground = class(LazObject)
	private
		FPalette: LazPalette;
		FBgChar : Char;
	private
		procedure setBgChar(v: Char);
		function  getBgChar: Char;
	public
		constructor Create;
		destructor Destroy;
	published
		property BgChar: Char read getBgChar write setBgChar;
	end;

type
	LazApplication = class(LazObject)
	private
		FBackground: LazBackground;
		FMenuBar:    LazMenuBar;
		FStatusBar:  LazStatusBar;
	public
		procedure setBackground(v: LazBackground);
		procedure setMenuBar   (v: LazMenuBar   );
		procedure setStatusBar (v: LazStatusBar );
		//
		function  getBackground: LazBackground;
		function  getMenuBar:    LazMenuBar;
		function  getStatusBar:  LazStatusBar;
	public
		constructor Create;
		destructor Destroy;
	published
		property Background: LazBackground read getBackground write setBackground;
		property MenuBar:    LazMenuBar    read getMenuBar    write setMenuBar;
		property StatusBar:  LazStatusBar  read getStatusBar  write setStatusBar;
	end;

implementation

// FPC ctor's ...
constructor LazObject     .Create;  [alias: 'LazObject_Create'      ]; cdecl; external 'laz_fpv.dll' name 'LazObject_Create';
constructor LazColor      .Create;  [alias: 'LazColor_Create'       ]; cdecl; external 'laz_fpv.dll' name 'LazColor_Create';
constructor LazPalette    .Create;  [alias: 'LazPalette_Create'     ]; cdecl; external 'laz_fpv.dll' name 'LazPalette_Create';
constructor LazMenuBar    .Create;  [alias: 'LazMenuBar_Create'     ]; cdecl; external 'laz_fpv.dll' name 'LazMenuBar_Create';
constructor LazStatusBar  .Create;  [alias: 'LazStatusBar_Create'   ]; cdecl; external 'laz_fpv.dll' name 'LazStatusBar_Create';
constructor LazBackground .Create;  [alias: 'LazBackground_Create'  ]; cdecl; external 'laz_fpv.dll' name 'LazBackground_Create';
constructor LazApplication.Create;  [alias: 'LazApplication_Create' ]; cdecl; external 'laz_fpv.dll' name 'LazApplication_Create';

// FPC dtor's ...
destructor  LazObject     .Destroy; [alias: 'LazObject_Destroy'     ]; cdecl; external 'laz_fpv.dll' name 'LazObject_Destroy';
destructor  LazColor      .Destroy; [alias: 'LazColor_Destroy'      ]; cdecl; external 'laz_fpv.dll' name 'LazColor_Destroy';
destructor  LazPalette    .Destroy; [alias: 'LazPalette_Destroy'    ]; cdecl; external 'laz_fpv.dll' name 'LazPalette_Destroy';
destructor  LazMenuBar    .Destroy; [alias: 'LazMenuBar_Destroy'    ]; cdecl; external 'laz_fpv.dll' name 'LazMenuBar_Destroy';
destructor  LazStatusBar  .Destroy; [alias: 'LazStatusBar_Destroy'  ]; cdecl; external 'laz_fpv.dll' name 'LazStatusBar_Destroy';
destructor  LazBackground .Destroy; [alias: 'LazBackground_Destroy' ]; cdecl; external 'laz_fpv.dll' name 'LazBackground_Destroy';
destructor  LazApplication.Destroy; [alias: 'LazApplication_Destroy']; cdecl; external 'laz_fpv.dll' name 'LazApplication_Destroy';

// FPC members ...
procedure LazApplication.setBackground(v: LazBackground); cdecl; external 'laz_fpv.dll' name 'LazApplication_setBackground';
procedure LazApplication.setMenuBar   (v:    LazMenuBar); cdecl; external 'laz_fpv.dll' name 'LazApplication_setMenuBar';
procedure LazApplication.setStatusBar (v:  LazStatusBar); cdecl; external 'laz_fpv.dll' name 'LazApplication_setStatusBar';
//
function  LazApplication.getBackground: LazBackground; begin result := FBackground; end;
function  LazApplication.getMenuBar   :    LazMenuBar; begin result := FMenuBar;    end;
function  LazApplication.getStatusBar :  LazStatusBar; begin result := FStatusBar;  end;
//
function  LazColor.clBlack:   LazColorArray; cdecl; external 'laz_fpv.dll' name 'LazColor_clBlack';
function  LazColor.clBlue:    LazColorArray; cdecl; external 'laz_fpv.dll' name 'LazColor_clBlue';
function  LazColor.clFuchsia: LazColorArray; cdecl; external 'laz_fpv.dll' name 'LazColor_clFuchsia';
function  LazColor.clGray:    LazColorArray; cdecl; external 'laz_fpv.dll' name 'LazColor_clGray';
function  LazColor.clGreen:   LazColorArray; cdecl; external 'laz_fpv.dll' name 'LazColor_clGreeb';
function  LazColor.clLime:    LazColorArray; cdecl; external 'laz_fpv.dll' name 'LazColor_clLime';
function  LazColor.clBrown:   LazColorArray; cdecl; external 'laz_fpv.dll' name 'LazColor_clBrown';
function  LazColor.clNavy:    LazColorArray; cdecl; external 'laz_fpv.dll' name 'LazColor_clNavy';
function  LazColor.clOlive:   LazColorArray; cdecl; external 'laz_fpv.dll' name 'LazColor_clOlive';
function  LazColor.clPurple:  LazColorArray; cdecl; external 'laz_fpv.dll' name 'LazColor_clPurple';
function  LazColor.clRed:     LazColorArray; cdecl; external 'laz_fpv.dll' name 'LazColor_clRed';
function  LazColor.clSilver:  LazColorArray; cdecl; external 'laz_fpv.dll' name 'LazColor_clSilver';
function  LazColor.clTeal:    LazColorArray; cdecl; external 'laz_fpv.dll' name 'LazColor_clTeal';
function  LazColor.clCyan:    LazColorArray; cdecl; external 'laz_fpv.dll' name 'LazColor_clCyan';
function  LazColor.clYellow:  LazColorArray; cdecl; external 'laz_fpv.dll' name 'LazColor_clYellow';
function  LazColor.clWhite:   LazColorArray; cdecl; external 'laz_fpv.dll' name 'LazColor_clWhite';
//
procedure LazBackground.setBgChar(v: Char); cdecl; external 'laz_fpv.dll' name 'LazBackground_setBgChar';
function  LazBackground.getBgChar: Char; begin result := FBgChar; end;
//
procedure LazPalette.setBackground(v: LazTColor); cdecl; external 'laz_fpv.dll' name 'LazPalette_setBackground';
procedure LazPalette.setForeground(v: LazTColor); cdecl; external 'laz_fpv.dll' name 'LazPalette_setForeground';

// -------------------------------------------------------
// this procedure does nothing.
// it's a dummy for fpc, to make .o file.
// fpc does not create .o bject file, if you have only
// interface "external"s.
// -------------------------------------------------------
procedure dummy; begin end;

end.
