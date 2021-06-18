// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/LazLocalesPL.hpp
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
#pragma once				// check: 1
#ifndef LazLocalesPL_hpp	// check: 2
#define LazLocalesPL_hpp

# include "LazLocales.hpp"

START_NS(FPV)

template <   class  Locale >
class LazLocalesPL: public LazLocales< Locale > {
public:
	 LazLocalesPL ();
	~LazLocalesPL ();

	LazResult < LazVoid > Create(LazVoid);
	LazResult < LazVoid > Destroy();
};

END_NS
#endif	// LazLocalesPL_hpp
