// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/LazString.hpp
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
#pragma once			// check: 1
#ifndef LazString_hpp	// check: 2
#define LazString_hpp

# include "LazTypes.hpp"

# include "LazObject.hpp"
# include "LazLocales.hpp"
# include "LazEncoding.hpp"

START_NS(FPV)

template <typename Locales>
class LazString: public Locales {
public:
};

END_NS

#endif	// LazString_hpp
