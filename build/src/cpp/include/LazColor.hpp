// ----------------------------------------------------------
// This file is part of RTL.
//
// file: ./include/fpv/LazColor.hpp
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
#pragma once			// check: 1
#ifndef LazColor_hpp	// check: 2
#define LazColor_hpp

# include "LazTypes.hpp"
# include "LazResult.hpp"

START_NS(FPV)

/** @struct    LazColorArray
 *  @brief     LazColorArray
 *  This structure act like a Pascal array data type <br>
 *  to be compatible with FPC class TColor.     <br>
 *  The return value is 9 Byte in size of data. <br>
 *  3 Byte's for each color item (RGB - red, green, blue) multiply the <br>
 *  value (1 Byte) of each item (3 * 3 Byte = 9 Bytes).                <br>
 *  Each item value can have the value from 0 till 255.                <br>
 *
 *  @see       LazColor
 *
 *  @author  paule32
 *  @date    2021-06-15
 *  @version 1.0
 */
struct LazColorArray {
	union {
		u_char red;    ///< value for color "red"   (0..255)
		u_char green;  ///< value for color "green" (0..255)
		u_char blue;   ///< value for color "blue"  (0..255)
	} RGB;
};

/** @class LazColor
 *  @brief TurboVision TColor class.
 *
 *  @author  paule32
 *  @date    2021-06-15
 *  @version 1.0
 */
template <class Color>
class LazColor: public LazObject<Color>
{
public:
	 LazColor();
	~LazColor();
	
	LazResult < LazVoid > Create(LazVoid);
	LazResult < LazVoid > Destroy();
};

END_NS

#endif	// LazColor_hpp
