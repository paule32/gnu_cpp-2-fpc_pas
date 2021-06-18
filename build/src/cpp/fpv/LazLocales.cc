// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/fpv/LazLocales.cc
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
# include "include/LazVision.hpp"

START_NS(FPV)

// ----------------------------------------
// LazColor: con-structor: FPC:
// ----------------------------------------
TEMPLATE_CLASS(
	LazVoid,     // return value
	Locales,     // object
	LazLocales,  // class
	Create,      // member
	(LazVoid),   // parameter
	fpv)
FPC_BEGIN
	//auto * tmp = new LazColor;
	//return tmp;
FPC_END
TEMPLATE_CLASS(
	     ,       // no return value (dtor)
	Locales,     // object
	LazLocales,  // class
	~LazLocales, // member: dtor
	(),fpv)
FPC_BEGIN
	//ClassName = new char[20];
	//strcpy(ClassName,"TColor");
FPC_END
// ----------------------------------------
// LazColor: de-structor: FPC:
// ----------------------------------------
TEMPLATE_CLASS(
	LazVoid,  	 // return value
	Locales,     // object
	LazLocales,  // class
	Destroy,	 // member
	(), 		 // parameter
	fpv)
FPC_BEGIN
	FPC_DESTROY(FPC_TVISION(LAZLOCALES));
FPC_END
TEMPLATE_CLASS(
	     ,       // no return value (dtor)
	Locales,     // object
	LazLocales,  // class
	~LazLocales, // member: dtor
	(),fpv)
FPC_BEGIN
	//delete ClassName;
FPC_END

END_NS
