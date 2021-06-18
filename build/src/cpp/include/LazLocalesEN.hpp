// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/LazLocalesEN.hpp
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
#pragma once				// check: 1
#ifndef LazLocalesEN_hpp	// check: 2
#define LazLocalesEN_hpp

# include "LazLocales.hpp"

START_NS(FPV)

template <   class  Locale >
class LazLocalesEN: public LazLocales< Locale > {
public:
	 LazLocalesEN ();
	~LazLocalesEN ();
	
	LazResult < LazVoid > Create(LazVoid);
	LazResult < LazVoid > Destroy();
};

END_NS
#endif	// LazLocalesEN_hpp
