// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/LazObject.hpp
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
#pragma once			// check: 1
#ifndef LazObject_hpp	// check: 2
#define LazObject_hpp

# include "LazTypes.hpp"
# include "LazResult.hpp"

START_NS(FPV)

// ----------------------------------------
// LazObject: con-structor: FPC:
// ----------------------------------------
template <class Object>
class LazObject {
	Object  obj;
public:
	 LazObject ();
    ~LazObject ();

	LazResult < LazVoid > Create(LazVoid);
	LazResult < LazVoid > Destroy();
};

END_NS

#endif	// LazObject_hpp
