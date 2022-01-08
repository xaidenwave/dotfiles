static const char norm_fg[] = "#cbb4b8";
static const char norm_bg[] = "#09080d";
static const char norm_border[] = "#8e7d80";

static const char sel_fg[] = "#cbb4b8";
static const char sel_bg[] = "#503748";
static const char sel_border[] = "#cbb4b8";

static const char urg_fg[] = "#cbb4b8";
static const char urg_bg[] = "#3A2E49";
static const char urg_border[] = "#3A2E49";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
};
