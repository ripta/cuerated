// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go internal/abi

package abi

// RegArgs is a struct that has space for each argument
// and return value register on the current architecture.
//
// Assembly code knows the layout of the first two fields
// of RegArgs.
//
// RegArgs also contains additional space to hold pointers
// when it may not be safe to keep them only in the integer
// register space otherwise.
#RegArgs: {
	// Values in these slots should be precisely the bit-by-bit
	// representation of how they would appear in a register.
	//
	// This means that on big endian arches, integer values should
	// be in the top bits of the slot. Floats are usually just
	// directly represented, but some architectures treat narrow
	// width floating point values specially (e.g. they're promoted
	// first, or they need to be NaN-boxed).
	Ints: 9 * [uint64] @go(,[9]uintptr)
	Floats: 15 * [uint64] @go(,[15]uint64)

	// Ptrs is a space that duplicates Ints but with pointer type,
	// used to make pointers passed or returned  in registers
	// visible to the GC by making the type unsafe.Pointer.
	Ptrs: 9 * [uint64] @go(,[9]unsafe.Pointer)

	// ReturnIsPtr is a bitmap that indicates which registers
	// contain or will contain pointers on the return path from
	// a reflectcall. The i'th bit indicates whether the i'th
	// register contains or will contain a valid Go pointer.
	ReturnIsPtr: #IntArgRegBitmap
}

// IntArgRegBitmap is a bitmap large enough to hold one bit per
// integer argument/return register.
#IntArgRegBitmap: 2 * [uint8]