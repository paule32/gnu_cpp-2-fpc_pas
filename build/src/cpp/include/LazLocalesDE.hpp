// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/LazLocalesDE.hpp
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
#pragma once				// check: 1
#ifndef LazLocalesDE_hpp	// check: 2
#define LazLocalesDE_hpp

# include "LazLocales.hpp"

START_NS(FPV)

template <   class  Locale >
class LazLocalesDE: public LazLocales< Locale > {
public:
	 LazLocalesDE ();
	~LazLocalesDE ();

	LazResult < LazVoid > Create(LazVoid);
	LazResult < LazVoid > Destroy();
};

END_NS
#endif	// LazLocalesDE_hpp
