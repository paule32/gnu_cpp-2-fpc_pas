// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/fpv/LazMenuBar.cc
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
# include "include/LazVision.hpp"

START_NS(FPV)

// ----------------------------------------
// LazMenuBar: con-structor: FPC:
// ----------------------------------------
TEMPLATE_CLASS(
	LazVoid,	 // return value
	MenuBar,	 // object
	LazMenuBar,  // class
	Create,      // member
	(LazVoid),   // parameter
	fpv)
FPC_BEGIN
	//auto * tmp = new LazColor;
	//return tmp;
FPC_END
TEMPLATE_CLASS(
	LazVoid,     // return value (ctor)
	MenuBar,     // object
	LazMenuBar,  // class
	LazMenuBar,  // member: ctor
	(LazVoid),   // parameter
	fpv)
FPC_BEGIN
	//ClassName = new char[20];
	//strcpy(ClassName,"TColor");
FPC_END
// ----------------------------------------
// LazMenuBar: de-structor: FPC:
// ----------------------------------------
TEMPLATE_CLASS(
	LazVoid,  	 // return value
	MenuBar,	 // object
	LazMenuBar,  // class
	Destroy,	 // member
	(), 		 // parameter
	fpv)
FPC_BEGIN
	FPC_DESTROY(FPC_LAZVISION(LAZMENUBAR));
FPC_END
TEMPLATE_CLASS(
	       ,     // no return value (dtor)
	Palette,	 // obkect
	LazMenuBar,  // class
	~LazMenuBar, // dtor
	(), 		 // no parameters
	fpv)
FPC_BEGIN
	//delete ClassName;
FPC_END

END_NS
