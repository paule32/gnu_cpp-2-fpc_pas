// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/LazLocalesSystem.hpp
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
#pragma once					// check: 1
#ifndef LazLocalesSystem_hpp	// check: 2
#define LazLocalesSystem_hpp

# include "LazLocales.hpp"

START_NS(FPV)

template <   class  Locale >
class LazLocalesSystem: public LazLocales< Locale > {
public:
	 LazLocalesSystem ();
	~LazLocalesSystem ();

	LazResult < LazVoid > Create(LazVoid);
	LazResult < LazVoid > Destroy();
};

END_NS
#endif	// LazLocalesSystem_hpp
