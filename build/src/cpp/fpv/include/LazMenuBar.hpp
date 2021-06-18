// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/LazMenuBar.hpp
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
#pragma once				// check: 1
#ifndef LazMenuBar_hpp		// check: 2
#define LazMenuBar_hpp

# include "LazVision.hpp"

START_NS(FPV)

// ----------------------------------------
// LazMenuBar: con-structor: FPC:
// ----------------------------------------
template <class MenuBar>
class LazMenuBar {
	MenuBar  obj;
public:
	 LazMenuBar ();
    ~LazMenuBar ();

	LazResult < LazVoid > Create(LazVoid);
	LazResult < LazVoid > Destroy();
};

END_NS

#endif	// LazMenuBar_hpp
