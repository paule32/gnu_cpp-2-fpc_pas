// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/LazApplication.hpp
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
#pragma once					// check: 1
#ifndef LazApplication_hpp		// check: 2
#define LazApplication_hpp

# include "LazVision.hpp"

START_NS(FPV)

// ----------------------------------------
// LazApplication: con-structor: FPC:
// ----------------------------------------
template <class Application>
class LazApplication {
	Application  app;
public:
	 LazApplication ();
    ~LazApplication ();

	LazResult < LazVoid > Create(LazVoid);
	LazResult < LazVoid > Destroy();
};

END_NS

#endif	// LazApplication_hpp
