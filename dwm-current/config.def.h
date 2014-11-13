/* See LICENSE file for copyright and license details. */

/* appearance */
static const char font[]            = "-*-tamsynmod-medium-r-*-*-14-*-*-*-*-*-*-*";
static const char normbordercolor[] = "#444444";
static const char normbgcolor[]     = "#222222";
static const char normfgcolor[]     = "#bbbbbb";
static const char selbordercolor[]  = "#005577";
static const char selbgcolor[]      = "#005577";
static const char selfgcolor[]      = "#eeeeee";
static const unsigned int borderpx  = 1;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const Bool showbar           = True;     /* False means no bar */
static const Bool topbar            = FALSE;     /* False means bottom bar */

/* tagging */
static const char *tags[] = { "main", "term", "edit", "media", "inc", "misc" };

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class      instance    title       tags mask     isfloating   monitor */
	{ "Gimp",     NULL,       NULL,       0,            True,        -1 },
	{ "Pidgin",     NULL,       NULL,       0,            True,        -1 },
        { "Firefox",  NULL,       NULL,       0,            False,       -1 },
        {  NULL,      NULL,       "Aurora Preferences",       0,            True,        -1 },
        { "Leafpad",  NULL,       NULL,       1 << 2,       False,       -1 },
        {  NULL ,     NULL,       "ranger",   1 << 3,       False,       -1 },
        {  "Qbittorrent",     NULL,       NULL,   1 << 4,       False,       -1 },    
        {  "Aurora" ,     NULL,       "Downloads",   0,       True,       -1 }, 
        {  "Aurora" ,     NULL,       "Tab Mix Plus Options",   0,       True,       -1 }, 
 	{  "Aurora" ,     NULL,       "BetterPrivacy",   0,       True,       -1 }, 
        {  "Aurora" ,     NULL,       "Adblock Plus Filter Preferences",   0,       True,       -1 }, 
	{  "Aurora" ,     NULL,       "Adblock Plus Filter Preferences",   0,       True,       -1 },
        {  "Aurora" ,     NULL,       "Cookies",   0,       True,       -1 },
        {  "Firefox" ,     NULL,       "Downloads",   0,       True,       -1 }, 
        {  "Firefox" ,     NULL,       "Tab Mix Plus Options",   0,       True,       -1 }, 
 	{  "Firefox" ,     NULL,       "BetterPrivacy",   0,       True,       -1 }, 
        {  "Firefox" ,     NULL,       "Adblock Plus Filter Preferences",   0,       True,       -1 }, 
	{  "Firefox" ,     NULL,       "Adblock Plus Filter Preferences",   0,       True,       -1 },
        {  "Firefox" ,     NULL,       "Cookies",   0,       True,       -1 },
	{  NULL,      NULL,       "Firefox Preferences",       0,            True, -1 },         
        {  "amdcccle" ,     NULL,     "Catalyst Control Center",   0,       True,       -1 },
        
};

/* layout(s) */
static const float mfact      = 0.65; /* factor of master area size [0.05..0.95] */
static const int nmaster      = 1;    /* number of clients in master area */
static const Bool resizehints = false; /* True means respect size hints in tiled resizals */

static const Layout layouts[] = {
	/* symbol     arrange function */
	 { "þ",      tile },     /* first entry is default */
	 { "ý",      NULL },     /* no layout function means floating behavior */
	{ "ô",      monocle },
};

/* key definitions */
#define MODKEY Mod1Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      toggleview,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      view,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static const char *dmenucmd[]           = { "dmenu_run", "-fn", font, "-nb", colors[0][ColBG], "-nf", colors[0][ColFG],"-sb", colors[1][ColBG], "-sf", colors[1][ColFG], NULL };
static const char *termcmd[]  			= { "urxvtc", NULL };
static const char   *mozcmd[] = { "aurora", NULL};
static const char   *filecmd[] = { "urxvtc", "-title", "ranger", "-e", "ranger", NULL };
static const char   *leafcmd[] = { "leafpad", NULL };
static const char    *probcmd[] = { "/home/dome/vimp.sh", NULL };

static Key keys[] = {
	/* modifier                     key        function        argument */
	{ MODKEY,                       XK_p,      spawn,          {.v = dmenucmd } },
	{ MODKEY|ShiftMask,             XK_Return, spawn,          {.v = termcmd } },
	{ MODKEY,                       XK_r,      spawn,          {.v = filecmd } },
        { MODKEY,                       XK_a,      spawn,          {.v = mozcmd } },
        { MODKEY,                       XK_v,      spawn,          {.v = probcmd } },
        { MODKEY,                       XK_e,      spawn,          {.v = leafcmd } },
        { MODKEY|ShiftMask,             XK_b,      togglebar,      {0} },
	{ MODKEY,                       XK_j,      focusstack,     {.i = +1 } },
	{ MODKEY,                       XK_k,      focusstack,     {.i = -1 } },
	{ MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },
	{ MODKEY,                       XK_Return, zoom,           {0} },
	{ MODKEY,                       XK_Tab,    view,           {0} },
        { MODKEY|ShiftMask,             XK_Tab,    toggleview,     {0} },                       
	{ MODKEY|ShiftMask,             XK_c,      killclient,     {0} },
	{ MODKEY,                       XK_w,      view_adjacent,  { .i = +1 } },
        { MODKEY,                       XK_s,      swapfocus,      {0} },
        { MODKEY|ShiftMask,             XK_j,      pushdown,       {0} },
        { MODKEY|ShiftMask,             XK_k,      pushup,         {0} },
        { MODKEY,                       XK_q,      view_adjacent,  { .i = -1 } },
	{ MODKEY,                       XK_t,      setlayout,      {.v = &layouts[0]} },
	{ MODKEY,                       XK_f,      setlayout,      {.v = &layouts[1]} },
	{ MODKEY,                       XK_m,      setlayout,      {.v = &layouts[2]} },
        { MODKEY,                       XK_space,  setlayout,      {0} },
	{ MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },
	{ MODKEY,                       XK_0,      view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },
	{ MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },
	{ MODKEY,                       XK_period, focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } },
	TAGKEYS(                        XK_1,                      0)
	TAGKEYS(                        XK_2,                      1)
	TAGKEYS(                        XK_3,                      2)
	TAGKEYS(                        XK_4,                      3)
	TAGKEYS(                        XK_5,                      4)
	TAGKEYS(                        XK_6,                      5)
	TAGKEYS(                        XK_7,                      6)
	TAGKEYS(                        XK_8,                      7)
	TAGKEYS(                        XK_9,                      8)
	{ MODKEY|ShiftMask,             XK_q,      quit,           {0} },
};

/* button definitions */
/* click can be ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

