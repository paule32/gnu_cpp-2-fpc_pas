// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/fpv/LazObject.cc
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
# include "include/LazVision.hpp"

START_NS(FPV)

// ----------------------------------------
// LazObject: con-structor: FPC:
// ----------------------------------------
TEMPLATE_CLASS(
	LazVoid,     // return value
	Object,      // object
	LazObject,   // class
	Create,      // member
	(LazVoid),   // parameter
	fpv)
FPC_BEGIN
	//auto * tmp = new TObject;
	//return tmp;
FPC_END
TEMPLATE_CLASS(
	LazVoid,	 // return value
	Object, 	 // object
	LazObject,   // class
	LazObject,   // member: ctor
	(LazVoid),   // no parameter (void)
	fpv)
FPC_BEGIN
	//ClassName.locales.bb = 6;
	//ClassName.locales.aa = 3;
	//ClassName.locales.encoding = 2;
	//strcpy(ClassName,"TObject");
FPC_END
// ----------------------------------------
// LazObject: de-structor: FPC:
// ----------------------------------------
TEMPLATE_CLASS(
	LazVoid,     // return value
	Object,      // object
	LazObject,   // class
	Destroy,     // member
	(),          // parameter
	fpv)
FPC_BEGIN
	FPC_DESTROY(FPC_LAZVISION(LAZOBJECT));
FPC_END
TEMPLATE_CLASS(
	      ,      // no return value (dtor)
	Object,      // object
	LazObject,   // class
	~LazObject,  // member: dtor
	(),fpv)
FPC_BEGIN
	//delete ClassName;
FPC_END

END_NS
