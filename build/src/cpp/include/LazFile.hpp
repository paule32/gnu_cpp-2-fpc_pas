// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/LazFile.hpp
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
#pragma once			// check: 1
#ifndef LazFile_hpp 	// check: 2
#define LazFile_hpp

# include "TTypes.hpp"

# include "LazLocales.hpp"
# include "LazEncoding.hpp"
# include "LazString.hpp"

START_NS(FPV)

class LazFile: public LazObject {
public:
	LazLocalesCore() {};
	
	LazString <LazLocales> Language;
	LazString <LazLocales> CountryName;
	LazInteger<LazLocales> CountryID;
};

END_NS
#endif	// LazFile_hpp
