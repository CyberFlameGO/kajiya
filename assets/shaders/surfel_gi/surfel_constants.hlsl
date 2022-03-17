#ifndef SURFEL_CONSTANTS_HLSL
#define SURFEL_CONSTANTS_HLSL

#define MAX_SURFELS_PER_CELL 128
#define MAX_SURFELS_PER_CELL_FOR_KEEP_ALIVE 32

static const float SURFEL_GRID_CELL_DIAMETER = 0.2;
static const float SURFEL_BASE_RADIUS = SURFEL_GRID_CELL_DIAMETER * 1.2;
static const float SURFEl_RADIUS_OVERSCALE = 1.25;

//#define SURFEL_META_CELL_COUNT (0 * sizeof(uint))
#define SURFEL_META_ENTRY_COUNT (1 * sizeof(uint))
#define SURFEL_META_ALLOC_COUNT (2 * sizeof(uint))

static const uint SURF_RCACHE_ENTRY_META_OCCUPIED = 1;

#define SURFEL_LIFE_RECYCLE 0x8000000u
#define SURFEL_LIFE_RECYCLED (SURFEL_LIFE_RECYCLE + 1u)

bool is_surfel_life_valid(uint life) {
    return life < 100;
}

bool surfel_life_needs_aging(uint life) {
    return life != SURFEL_LIFE_RECYCLED;
}

#endif // SURFEL_CONSTANTS_HLSL