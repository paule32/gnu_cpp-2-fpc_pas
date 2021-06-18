// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/fpv/LazStatusBar.cc
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
# include "include/LazVision.hpp"

START_NS(FPV)

// ----------------------------------------
// LazStatusBar: con-structor: FPC:
// ----------------------------------------
TEMPLATE_CLASS(
	LazVoid,	   // return value
	StatusBar,	   // object
	LazStatusBar,  // class
	Create,        // member
	(LazVoid),     // parameter
	fpv)
FPC_BEGIN
	//auto * tmp = new LazColor;
	//return tmp;
FPC_END
TEMPLATE_CLASS(
	LazVoid,       // return value (ctor)
	StatusBar,     // object
	LazStatusBar,  // class
	LazStatusBar,  // member: ctor
	(LazVoid),     // parameter
	fpv)
FPC_BEGIN
	//ClassName = new char[20];
	//strcpy(ClassName,"TColor");
FPC_END
// ----------------------------------------
// LazStatusBar: de-structor: FPC:
// ----------------------------------------
TEMPLATE_CLASS(
	LazVoid,  	   // return value
	StatusBar,	   // object
	LazStatusBar,  // class
	Destroy,	   // member
	(), 		   // parameter
	fpv)
FPC_BEGIN
	FPC_DESTROY(FPC_LAZVISION(LAZSTATUSBAR));
FPC_END
TEMPLATE_CLASS(
	         ,     // no return value (dtor)
	StatusBar,     // obkect
	LazStatusBar,  // class
	~LazStatusBar, // dtor
	(), 		   // no parameters
	fpv)
FPC_BEGIN
	//delete ClassName;
FPC_END

END_NS
