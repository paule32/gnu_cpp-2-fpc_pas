// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/LazStatusBar.hpp
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
#pragma once				// check: 1
#ifndef LazStatusBar_hpp	// check: 2
#define LazStatusBar_hpp

# include "LazVision.hpp"

START_NS(FPV)

// ----------------------------------------
// LazStatusBar: con-structor: FPC:
// ----------------------------------------
template <class StatusBar>
class LazStatusBar {
	StatusBar  obj;
public:
	 LazStatusBar ();
    ~LazStatusBar ();

	LazResult < LazVoid > Create(LazVoid);
	LazResult < LazVoid > Destroy();
};

END_NS

#endif	// LazStatusBar_hpp
