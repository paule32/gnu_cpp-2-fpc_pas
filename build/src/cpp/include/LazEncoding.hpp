// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/LazEncoding.hpp
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
#pragma once				// check: 1
#ifndef LazEncoding_hpp 	// check: 2
#define LazEncoding_hpp

# include "LazTypes.hpp"

# include "LazLocales.hpp"
# include "LazString.hpp"

START_NS(FPV)

class LazEncoding_system { public: LazEncoding_system  () {}; };
class LazEncoding_ascii  { public: LazEncoding_ascii   () {}; };
class LazEncoding_utf_8  { public: LazEncoding_utf_8   () {}; };
class LazEncoding_utf_16 { public: LazEncoding_utf_16  () {}; };
class LazEncoding_utf_32 { public: LazEncoding_utf_32  () {}; };

template < class Encoding, class Locales >
class LazEncoding {
public:
	Locales  locales3;
	Encoding encoding3;
};

END_NS

#endif	// LazEncoding_hpp
