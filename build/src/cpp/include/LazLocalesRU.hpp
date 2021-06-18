// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/LazLocalesRU.hpp
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
#pragma once				// check: 1
#ifndef LazLocalesRU_hpp	// check: 2
#define LazLocalesRU_hpp

# include "LazLocales.hpp"

START_NS(FPV)

template <   class  Locale >
class LazLocalesRU: public LazLocales< Locale > {
public:
	 LazLocalesRU ();
	~LazLocalesRU ();

	LazResult < LazVoid > Create(LazVoid);
	LazResult < LazVoid > Destroy();
};

END_NS
#endif	// LazLocalesRU_hpp
