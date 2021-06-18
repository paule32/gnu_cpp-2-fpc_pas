// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/fpv/LazPalette.cc
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
# include "include/LazVision.hpp"

START_NS(FPV)

// ----------------------------------------
// LazPalette: con-structor: FPC:
// ----------------------------------------
TEMPLATE_CLASS(
	LazVoid,	 // return value
	Palette,	 // object
	LazPalette,  // class
	Create,      // member
	(LazVoid),   // parameter
	fpv)
FPC_BEGIN
	//auto * tmp = new LazColor;
	//return tmp;
FPC_END
TEMPLATE_CLASS(
	       ,     // no return value (ctor)
	Palette,     // object
	LazPalette,  // class
	LazPalette,  // member: ctor
	(LazVoid),   // parameter
	fpv)
FPC_BEGIN
	//ClassName = new char[20];
	//strcpy(ClassName,"TColor");
FPC_END
// ----------------------------------------
// LazPalette: de-structor: FPC:
// ----------------------------------------
TEMPLATE_CLASS(
	LazVoid,  	 // return value
	Palette,	 // object
	LazPalette,  // class
	Destroy,	 // member
	(), 		 // parameter
	fpv)
FPC_BEGIN
	FPC_DESTROY(FPC_LAZVISION(LAZPALETTE));
FPC_END
TEMPLATE_CLASS(
	       ,     // no return value (dtor)
	Palette,	 // obkect
	LazPalette,  // class
	~LazPalette, // member: dtor
	(), 		 // no parameters
	fpv)
FPC_BEGIN
	//delete ClassName;
FPC_END

END_NS
