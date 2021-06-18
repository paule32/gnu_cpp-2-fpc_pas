// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/LazLocales.hpp
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
#pragma once				// check: 1
#ifndef LazLocales_hpp		// check: 2
#define LazLocales_hpp

# include "LazTypes.hpp"

# include "LazEncoding.hpp"
# include "LazString.hpp"

START_NS(FPV)

template <class Locale>
class LazLocales {
	Locale  loc;
public:
	 LazLocales();
	~LazLocales();

	LazResult < LazVoid > Create(LazVoid);
	LazResult < LazVoid > Destroy();
};

END_NS
#endif	// LazLocales_hpp

