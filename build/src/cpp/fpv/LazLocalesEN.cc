// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/fpv/LazLocalesEN.cc
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
# include "include/LazLocales.hpp"

START_NS(FPV)

// ----------------------------------------
// LazLocalesEN: con-structor: FPC:
// ----------------------------------------
TEMPLATE_CLASS(
	LazVoid,     	// return value
	Locales,    	// object
	LazLocalesEN,	// class
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
	LazLocalesEN,   // class
	~LazLocalesEN,  // member: dtor
	(),fpv)
FPC_BEGIN
	//ClassName = new char[20];
	//strcpy(ClassName,"TColor");
FPC_END
// ----------------------------------------
// LazLocalesEN: de-structor: FPC:
// ----------------------------------------
TEMPLATE_CLASS(
	LazVoid,  	 	// return value
	Locales,     	// object
	LazLocalesEN,   // class
	Destroy,	 	// member
	(), 		 	// parameter
	fpv)
FPC_BEGIN
	FPC_DESTROY(FPC_TVISION(LAZLOCALESEN));
FPC_END
TEMPLATE_CLASS(
	     ,      	// no return value (dtor)
	Locales,    	// object
	LazLocalesEN,   // class
	~LazLocalesEN,	// member: dtor
	(),fpv)
FPC_BEGIN
	//delete ClassName;
FPC_END

END_NS
