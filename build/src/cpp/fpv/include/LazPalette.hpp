// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/LazPalette.hpp
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
#pragma once				// check: 1
#ifndef LazPalette_hpp		// check: 2
#define LazPalette_hpp

# include "LazVision.hpp"

START_NS(FPV)

// ----------------------------------------
// LazMenuBar: con-structor: FPC:
// ----------------------------------------
template <class Palette>
class LazPalette {
	Palette  obj;
public:
	 LazPalette ();
    ~LazPalette ();

	LazResult < LazVoid > Create(LazVoid);
	LazResult < LazVoid > Destroy();
};

END_NS

#endif	// LazPalette_hpp
