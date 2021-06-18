// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/fpv/LazBackground.cc
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
# include "include/LazVision.hpp"

START_NS(FPV)

// ----------------------------------------
// LazBackground: con-structor: FPC:
// ----------------------------------------
TEMPLATE_CLASS(
	LazVoid,	   // return value
	Background,	   // object
	LazBackground, // class
	Create,        // member
	(LazVoid),     // parameter
	fpv)
FPC_BEGIN
	//auto * tmp = new LazColor;
	//return tmp;
FPC_END
TEMPLATE_CLASS(
	LazVoid,       // return value (ctor)
	Background,    // object
	LazBackground, // class
	LazBackground, // member: ctor
	(LazVoid),     // parameter
	fpv)
FPC_BEGIN
	//ClassName = new char[20];
	//strcpy(ClassName,"TColor");
FPC_END
// ----------------------------------------
// LazBackground: de-structor: FPC:
// ----------------------------------------
TEMPLATE_CLASS(
	LazVoid,  	   // return value
	Background,	   // object
	LazBackground, // class
	Destroy,	   // member
	(), 		   // parameter
	fpv)
FPC_BEGIN
	FPC_DESTROY(FPC_LAZVISION(LAZBACKGROUND));
FPC_END
TEMPLATE_CLASS(
	         ,      // no return value (dtor)
	Background,     // obkect
	LazBackground,  // class
	~LazBackground, // dtor
	(), 		    // no parameters
	fpv)
FPC_BEGIN
	//delete ClassName;
FPC_END

END_NS
