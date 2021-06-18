// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
# include "TTypes.h"
# include "TObject.h"

START_MANGLE
START_NS(VCL)

// TObject constructor: FPC
VOID FPC_DLLFUNC(TObject_Create,vcl)()
FPC_BEGIN

FPC_END

// TObject constrcutor: C++
TObject::TObject() { FPC_DLLFUNC(TObject_Create,vcl)(); }

// TObject destructor: C++
TObject::~TObject() { }

END_NS
END_MANGLE
