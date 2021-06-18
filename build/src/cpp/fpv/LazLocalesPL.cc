// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/fpv/LazLocalesPL.cc
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
# include "include/LazLocales.hpp"

START_NS(FPV)

// ----------------------------------------
// LazLocalesPL: con-structor: FPC:
// ----------------------------------------
TEMPLATE_CLASS(
	LazVoid,     	// return value
	Locales,    	// object
	LazLocalesPL,	// class
	Create,      	// member
	(LazVoid),   	// parameter
	fpv)
FPC_BEGIN
	//auto * tmp = new LazColor;
	//return tmp;
FPC_END
TEMPLATE_CLASS(
	     ,       	// no return value (dtor)
	Locales,     	// object
	LazLocalesPL,   // class
	~LazLocalesPL,  // member: dtor
	(),fpv)
FPC_BEGIN
	//ClassName = new char[20];
	//strcpy(ClassName,"TColor");
FPC_END
// ----------------------------------------
// LazLocalesPL: de-structor: FPC:
// ----------------------------------------
TEMPLATE_CLASS(
	LazVoid,  	 	// return value
	Locales,     	// object
	LazLocalesPL,   // class
	Destroy,	 	// member
	(), 		 	// parameter
	fpv)
FPC_BEGIN
	FPC_DESTROY(FPC_TVISION(LAZLOCALESPL));
FPC_END
TEMPLATE_CLASS(
	     ,      	// no return value (dtor)
	Locales,    	// object
	LazLocalesPL,   // class
	~LazLocalesPL,	// member: dtor
	(),fpv)
FPC_BEGIN
	//delete ClassName;
FPC_END

END_NS
