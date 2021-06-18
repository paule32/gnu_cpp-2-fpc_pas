// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/LazBackground.hpp
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
#pragma once				// check: 1
#ifndef LazBackground_hpp	// check: 2
#define LazBackground_hpp

# include "LazVision.hpp"

START_NS(FPV)

// ----------------------------------------
// LazBackground: con-structor: FPC:
// ----------------------------------------
template <class Background>
class LazBackground {
	Background  obj;
public:
	 LazBackground ();
    ~LazBackground ();

	LazResult < LazVoid > Create(LazVoid);
	LazResult < LazVoid > Destroy();
};

END_NS

#endif	// LazBackground_hpp
