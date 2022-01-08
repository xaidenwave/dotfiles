const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#09080d", /* black   */
  [1] = "#3A2E49", /* red     */
  [2] = "#503748", /* green   */
  [3] = "#643C49", /* yellow  */
  [4] = "#6C4A55", /* blue    */
  [5] = "#975F64", /* magenta */
  [6] = "#C17D7C", /* cyan    */
  [7] = "#cbb4b8", /* white   */

  /* 8 bright colors */
  [8]  = "#8e7d80",  /* black   */
  [9]  = "#3A2E49",  /* red     */
  [10] = "#503748", /* green   */
  [11] = "#643C49", /* yellow  */
  [12] = "#6C4A55", /* blue    */
  [13] = "#975F64", /* magenta */
  [14] = "#C17D7C", /* cyan    */
  [15] = "#cbb4b8", /* white   */

  /* special colors */
  [256] = "#09080d", /* background */
  [257] = "#cbb4b8", /* foreground */
  [258] = "#cbb4b8",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
