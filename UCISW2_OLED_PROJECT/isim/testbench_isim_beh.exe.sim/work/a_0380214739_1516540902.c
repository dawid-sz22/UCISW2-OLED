/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/lab/Downloads/UCISW2-OLED-main/UCISW2_OLED_PROJECT/sources/Keyboard_Decoder.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0380214739_1516540902_p_0(char *t0)
{
    char t8[16];
    char t13[16];
    char t17[16];
    char t25[16];
    char t27[16];
    char t32[16];
    char t40[16];
    char t42[16];
    char t47[16];
    char t55[16];
    char t57[16];
    char t62[16];
    char t70[16];
    char t72[16];
    char t77[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    char *t9;
    char *t10;
    char *t11;
    unsigned char t12;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    char *t22;
    char *t24;
    char *t26;
    char *t28;
    char *t29;
    int t30;
    unsigned int t31;
    char *t33;
    int t34;
    int t35;
    char *t37;
    char *t39;
    char *t41;
    char *t43;
    char *t44;
    int t45;
    unsigned int t46;
    char *t48;
    int t49;
    int t50;
    char *t52;
    char *t54;
    char *t56;
    char *t58;
    char *t59;
    int t60;
    unsigned int t61;
    char *t63;
    int t64;
    int t65;
    char *t67;
    char *t69;
    char *t71;
    char *t73;
    char *t74;
    int t75;
    unsigned int t76;
    char *t78;
    int t79;
    int t80;
    char *t82;
    char *t83;
    char *t84;
    char *t85;
    char *t86;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1792U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (t0 + 1512U);
    t6 = *((char **)t3);
    t7 = *((unsigned char *)t6);
    t9 = ((IEEE_P_2592010699) + 4024);
    t3 = xsi_base_array_concat(t3, t8, t9, (char)99, t5, (char)99, t7, (char)101);
    t10 = (t0 + 1192U);
    t11 = *((char **)t10);
    t12 = *((unsigned char *)t11);
    t14 = ((IEEE_P_2592010699) + 4024);
    t10 = xsi_base_array_concat(t10, t13, t14, (char)97, t3, t8, (char)99, t12, (char)101);
    t15 = (t0 + 1032U);
    t16 = *((char **)t15);
    t18 = ((IEEE_P_2592010699) + 4024);
    t19 = (t0 + 5520U);
    t15 = xsi_base_array_concat(t15, t17, t18, (char)97, t10, t13, (char)97, t16, t19, (char)101);
    t20 = (t0 + 5574);
    t22 = (t0 + 5577);
    t26 = ((IEEE_P_2592010699) + 4024);
    t28 = (t27 + 0U);
    t29 = (t28 + 0U);
    *((int *)t29) = 0;
    t29 = (t28 + 4U);
    *((int *)t29) = 2;
    t29 = (t28 + 8U);
    *((int *)t29) = 1;
    t30 = (2 - 0);
    t31 = (t30 * 1);
    t31 = (t31 + 1);
    t29 = (t28 + 12U);
    *((unsigned int *)t29) = t31;
    t29 = (t32 + 0U);
    t33 = (t29 + 0U);
    *((int *)t33) = 0;
    t33 = (t29 + 4U);
    *((int *)t33) = 7;
    t33 = (t29 + 8U);
    *((int *)t33) = 1;
    t34 = (7 - 0);
    t31 = (t34 * 1);
    t31 = (t31 + 1);
    t33 = (t29 + 12U);
    *((unsigned int *)t33) = t31;
    t24 = xsi_base_array_concat(t24, t25, t26, (char)97, t20, t27, (char)97, t22, t32, (char)101);
    t31 = (3U + 8U);
    t35 = xsi_mem_cmp(t24, t15, t31);
    if (t35 == 1)
        goto LAB6;

LAB11:    t33 = (t0 + 5585);
    t37 = (t0 + 5588);
    t41 = ((IEEE_P_2592010699) + 4024);
    t43 = (t42 + 0U);
    t44 = (t43 + 0U);
    *((int *)t44) = 0;
    t44 = (t43 + 4U);
    *((int *)t44) = 2;
    t44 = (t43 + 8U);
    *((int *)t44) = 1;
    t45 = (2 - 0);
    t46 = (t45 * 1);
    t46 = (t46 + 1);
    t44 = (t43 + 12U);
    *((unsigned int *)t44) = t46;
    t44 = (t47 + 0U);
    t48 = (t44 + 0U);
    *((int *)t48) = 0;
    t48 = (t44 + 4U);
    *((int *)t48) = 7;
    t48 = (t44 + 8U);
    *((int *)t48) = 1;
    t49 = (7 - 0);
    t46 = (t49 * 1);
    t46 = (t46 + 1);
    t48 = (t44 + 12U);
    *((unsigned int *)t48) = t46;
    t39 = xsi_base_array_concat(t39, t40, t41, (char)97, t33, t42, (char)97, t37, t47, (char)101);
    t46 = (3U + 8U);
    t50 = xsi_mem_cmp(t39, t15, t46);
    if (t50 == 1)
        goto LAB7;

LAB12:    t48 = (t0 + 5596);
    t52 = (t0 + 5599);
    t56 = ((IEEE_P_2592010699) + 4024);
    t58 = (t57 + 0U);
    t59 = (t58 + 0U);
    *((int *)t59) = 0;
    t59 = (t58 + 4U);
    *((int *)t59) = 2;
    t59 = (t58 + 8U);
    *((int *)t59) = 1;
    t60 = (2 - 0);
    t61 = (t60 * 1);
    t61 = (t61 + 1);
    t59 = (t58 + 12U);
    *((unsigned int *)t59) = t61;
    t59 = (t62 + 0U);
    t63 = (t59 + 0U);
    *((int *)t63) = 0;
    t63 = (t59 + 4U);
    *((int *)t63) = 7;
    t63 = (t59 + 8U);
    *((int *)t63) = 1;
    t64 = (7 - 0);
    t61 = (t64 * 1);
    t61 = (t61 + 1);
    t63 = (t59 + 12U);
    *((unsigned int *)t63) = t61;
    t54 = xsi_base_array_concat(t54, t55, t56, (char)97, t48, t57, (char)97, t52, t62, (char)101);
    t61 = (3U + 8U);
    t65 = xsi_mem_cmp(t54, t15, t61);
    if (t65 == 1)
        goto LAB8;

LAB13:    t63 = (t0 + 5607);
    t67 = (t0 + 5610);
    t71 = ((IEEE_P_2592010699) + 4024);
    t73 = (t72 + 0U);
    t74 = (t73 + 0U);
    *((int *)t74) = 0;
    t74 = (t73 + 4U);
    *((int *)t74) = 2;
    t74 = (t73 + 8U);
    *((int *)t74) = 1;
    t75 = (2 - 0);
    t76 = (t75 * 1);
    t76 = (t76 + 1);
    t74 = (t73 + 12U);
    *((unsigned int *)t74) = t76;
    t74 = (t77 + 0U);
    t78 = (t74 + 0U);
    *((int *)t78) = 0;
    t78 = (t74 + 4U);
    *((int *)t78) = 7;
    t78 = (t74 + 8U);
    *((int *)t78) = 1;
    t79 = (7 - 0);
    t76 = (t79 * 1);
    t76 = (t76 + 1);
    t78 = (t74 + 12U);
    *((unsigned int *)t78) = t76;
    t69 = xsi_base_array_concat(t69, t70, t71, (char)97, t63, t72, (char)97, t67, t77, (char)101);
    t76 = (3U + 8U);
    t80 = xsi_mem_cmp(t69, t15, t76);
    if (t80 == 1)
        goto LAB9;

LAB14:
LAB10:    xsi_set_current_line(61, ng0);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(50, ng0);
    t78 = (t0 + 5618);
    t82 = (t0 + 3392);
    t83 = (t82 + 56U);
    t84 = *((char **)t83);
    t85 = (t84 + 56U);
    t86 = *((char **)t85);
    memcpy(t86, t78, 2U);
    xsi_driver_first_trans_fast_port(t82);
    goto LAB5;

LAB7:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 5620);
    t4 = (t0 + 3392);
    t6 = (t4 + 56U);
    t9 = *((char **)t6);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB5;

LAB8:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 5622);
    t4 = (t0 + 3392);
    t6 = (t4 + 56U);
    t9 = *((char **)t6);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB5;

LAB9:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 5624);
    t4 = (t0 + 3392);
    t6 = (t4 + 56U);
    t9 = *((char **)t6);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB5;

LAB15:;
}


extern void work_a_0380214739_1516540902_init()
{
	static char *pe[] = {(void *)work_a_0380214739_1516540902_p_0};
	xsi_register_didat("work_a_0380214739_1516540902", "isim/testbench_isim_beh.exe.sim/work/a_0380214739_1516540902.didat");
	xsi_register_executes(pe);
}
