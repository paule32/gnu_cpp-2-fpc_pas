// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/LazResult.hpp
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
#pragma once				// check: 1
#ifndef LazResult_hpp		// check: 2
#define LazResult_hpp

# include "LazTypes.hpp"

# include "LazEncoding.hpp"
# include "LazString.hpp"

START_NS(FPV)

template <class Result>
class LazResult {
	Result  obj;
public:
	 LazResult();
	~LazResult();

	Result Create(LazVoid);
	Result Destroy();
};

END_NS
#endif	// LazResult_hpp
