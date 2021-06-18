// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/fpv/LazLocalesDE.cc
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
# include "include/LazLocales.hpp"

START_NS(FPV)

// ----------------------------------------
// LazLocalesDE: con-structor: FPC:
// ----------------------------------------
TEMPLATE_CLASS(
	LazVoid,     	// return value
	Locales,    	// object
	LazLocalesDE,	// class
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
	LazLocalesDE,   // class
	~LazLocalesDE,  // member: dtor
	(),fpv)
FPC_BEGIN
	//ClassName = new char[20];
	//strcpy(ClassName,"TColor");
FPC_END
// ----------------------------------------
// LazLocalesDE: de-structor: FPC:
// ----------------------------------------
TEMPLATE_CLASS(
	LazVoid,  	 	// return value
	Locales,     	// object
	LazLocalesDE,   // class
	Destroy,	 	// member
	(), 		 	// parameter
	fpv)
FPC_BEGIN
	FPC_DESTROY(FPC_TVISION(LAZLOCALESDE));
FPC_END
TEMPLATE_CLASS(
	     ,      	// no return value (dtor)
	Locales,    	// object
	LazLocalesDE,   // class
	~LazLocalesDE,	// member: dtor
	(),fpv)
FPC_BEGIN
	//delete ClassName;
FPC_END

END_NS
