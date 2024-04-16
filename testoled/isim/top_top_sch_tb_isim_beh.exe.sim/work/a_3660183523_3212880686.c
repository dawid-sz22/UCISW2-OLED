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
static const char *ng0 = "C:/Users/lab/Downloads/Test_OLED126x64 (1)/OLED_Ctrl.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_1242562249_sub_1781507893_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_3469716711_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3660183523_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6640);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 6816);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 6816);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t3);
    goto LAB6;

}

static void work_a_3660183523_3212880686_p_1(char *t0)
{
    char t17[16];
    char t26[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    unsigned char t16;
    unsigned int t18;
    unsigned char t19;
    char *t20;
    int t21;
    unsigned char t22;
    char *t23;
    unsigned char t24;
    unsigned char t25;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned char t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6, &&LAB7, &&LAB8, &&LAB9, &&LAB10};

LAB0:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6880);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 6656);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(67, ng0);
    t4 = (t0 + 6880);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)1;
    xsi_driver_first_trans_fast(t4);
    goto LAB2;

LAB4:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 6880);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 10840U);
    t4 = (t0 + 3728U);
    t5 = *((char **)t4);
    t9 = *((int *)t5);
    t10 = (t9 - 1);
    t11 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, t10);
    if (t11 == 1)
        goto LAB14;

LAB15:    t3 = (unsigned char)0;

LAB16:    if (t3 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB2;

LAB6:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t11 = (t3 == (unsigned char)2);
    if (t11 != 0)
        goto LAB17;

LAB19:
LAB18:    goto LAB2;

LAB7:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t13 = *((unsigned char *)t2);
    t16 = (t13 == (unsigned char)3);
    if (t16 == 1)
        goto LAB29;

LAB30:    t12 = (unsigned char)0;

LAB31:    if (t12 == 1)
        goto LAB26;

LAB27:    t11 = (unsigned char)0;

LAB28:    if (t11 == 1)
        goto LAB23;

LAB24:    t3 = (unsigned char)0;

LAB25:    if (t3 != 0)
        goto LAB20;

LAB22:
LAB21:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t11 = (t3 == (unsigned char)3);
    if (t11 != 0)
        goto LAB34;

LAB36:
LAB35:    goto LAB2;

LAB8:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 6880);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)6;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB9:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 10840U);
    t11 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, 1);
    if (t11 == 1)
        goto LAB40;

LAB41:    t3 = (unsigned char)0;

LAB42:    if (t3 != 0)
        goto LAB37;

LAB39:
LAB38:    goto LAB2;

LAB10:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t11 = (t3 == (unsigned char)2);
    if (t11 != 0)
        goto LAB43;

LAB45:
LAB44:    goto LAB2;

LAB11:    xsi_set_current_line(74, ng0);
    t4 = (t0 + 6880);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t14 = (t8 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    goto LAB12;

LAB14:    t4 = (t0 + 2312U);
    t6 = *((char **)t4);
    t12 = *((unsigned char *)t6);
    t13 = (t12 == (unsigned char)2);
    t3 = t13;
    goto LAB16;

LAB17:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 6880);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

LAB20:    xsi_set_current_line(86, ng0);
    t15 = (t0 + 3432U);
    t27 = *((char **)t15);
    t15 = (t0 + 10872U);
    t28 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t26, t27, t15, 1);
    t29 = (t26 + 12U);
    t18 = *((unsigned int *)t29);
    t30 = (1U * t18);
    t31 = (16U != t30);
    if (t31 == 1)
        goto LAB32;

LAB33:    t32 = (t0 + 6944);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t28, 16U);
    xsi_driver_first_trans_fast(t32);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 6880);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB21;

LAB23:    t15 = (t0 + 2312U);
    t23 = *((char **)t15);
    t24 = *((unsigned char *)t23);
    t25 = (t24 == (unsigned char)2);
    t3 = t25;
    goto LAB25;

LAB26:    t8 = (t0 + 2632U);
    t14 = *((char **)t8);
    t8 = (t0 + 10840U);
    t15 = (t0 + 3728U);
    t20 = *((char **)t15);
    t10 = *((int *)t20);
    t21 = (t10 - 1);
    t22 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t14, t8, t21);
    t11 = t22;
    goto LAB28;

LAB29:    t1 = (t0 + 3432U);
    t4 = *((char **)t1);
    t1 = (t0 + 10872U);
    t5 = (t0 + 11010);
    t7 = (t17 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 11;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t9 = (11 - 0);
    t18 = (t9 * 1);
    t18 = (t18 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t18;
    t19 = ieee_p_1242562249_sub_3469716711_1035706684(IEEE_P_1242562249, t4, t1, t5, t17);
    t12 = t19;
    goto LAB31;

LAB32:    xsi_size_not_matching(16U, t30, 0);
    goto LAB33;

LAB34:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 6880);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB35;

LAB37:    xsi_set_current_line(98, ng0);
    t4 = (t0 + 6880);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t14 = *((char **)t8);
    *((unsigned char *)t14) = (unsigned char)7;
    xsi_driver_first_trans_fast(t4);
    goto LAB38;

LAB40:    t4 = (t0 + 2312U);
    t5 = *((char **)t4);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)2);
    t3 = t13;
    goto LAB42;

LAB43:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 6880);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB44;

}

static void work_a_3660183523_3212880686_p_2(char *t0)
{
    char t19[16];
    char *t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    unsigned int t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6672);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(114, ng0);
    t4 = (t0 + 2792U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)0);
    if (t7 == 1)
        goto LAB8;

LAB9:    t4 = (t0 + 2792U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)4);
    t3 = t10;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 2792U);
    t4 = *((char **)t1);
    t6 = *((unsigned char *)t4);
    t7 = (t6 == (unsigned char)2);
    if (t7 == 1)
        goto LAB16;

LAB17:    t1 = (t0 + 2792U);
    t5 = *((char **)t1);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)6);
    t3 = t10;

LAB18:    if (t3 == 1)
        goto LAB13;

LAB14:    t2 = (unsigned char)0;

LAB15:    if (t2 != 0)
        goto LAB11;

LAB12:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(115, ng0);
    t4 = xsi_get_transient_memory(3U);
    memset(t4, 0, 3U);
    t11 = t4;
    memset(t11, (unsigned char)2, 3U);
    t12 = (t0 + 7008);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 3U);
    xsi_driver_first_trans_fast(t12);
    goto LAB6;

LAB8:    t3 = (unsigned char)1;
    goto LAB10;

LAB11:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 2632U);
    t11 = *((char **)t1);
    t1 = (t0 + 10840U);
    t12 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t19, t11, t1, 1);
    t13 = (t19 + 12U);
    t20 = *((unsigned int *)t13);
    t21 = (1U * t20);
    t22 = (3U != t21);
    if (t22 == 1)
        goto LAB19;

LAB20:    t14 = (t0 + 7008);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t23 = (t16 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t12, 3U);
    xsi_driver_first_trans_fast(t14);
    goto LAB6;

LAB13:    t1 = (t0 + 2312U);
    t8 = *((char **)t1);
    t17 = *((unsigned char *)t8);
    t18 = (t17 == (unsigned char)2);
    t2 = t18;
    goto LAB15;

LAB16:    t3 = (unsigned char)1;
    goto LAB18;

LAB19:    xsi_size_not_matching(3U, t21, 0);
    goto LAB20;

}

static void work_a_3660183523_3212880686_p_3(char *t0)
{
    char t36[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned char t18;
    char *t19;
    char *t20;
    unsigned char t21;
    unsigned char t22;
    char *t23;
    unsigned char t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t37;
    char *t38;
    int t39;
    unsigned int t40;
    unsigned char t41;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;

LAB0:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:    t19 = (t0 + 2792U);
    t20 = *((char **)t19);
    t21 = *((unsigned char *)t20);
    t22 = (t21 == (unsigned char)6);
    if (t22 == 1)
        goto LAB7;

LAB8:    t18 = (unsigned char)0;

LAB9:    if (t18 != 0)
        goto LAB5;

LAB6:    t32 = (t0 + 3432U);
    t33 = *((char **)t32);
    t32 = (t0 + 10872U);
    t34 = (t0 + 11030);
    t37 = (t36 + 0U);
    t38 = (t37 + 0U);
    *((int *)t38) = 0;
    t38 = (t37 + 4U);
    *((int *)t38) = 11;
    t38 = (t37 + 8U);
    *((int *)t38) = 1;
    t39 = (11 - 0);
    t40 = (t39 * 1);
    t40 = (t40 + 1);
    t38 = (t37 + 12U);
    *((unsigned int *)t38) = t40;
    t41 = ieee_p_1242562249_sub_3469716711_1035706684(IEEE_P_1242562249, t33, t32, t34, t36);
    if (t41 != 0)
        goto LAB10;

LAB11:
LAB12:    t48 = (t0 + 1352U);
    t49 = *((char **)t48);
    t48 = (t0 + 7072);
    t50 = (t48 + 56U);
    t51 = *((char **)t50);
    t52 = (t51 + 56U);
    t53 = *((char **)t52);
    memcpy(t53, t49, 8U);
    xsi_driver_first_trans_fast_port(t48);

LAB2:    t54 = (t0 + 6688);
    *((int *)t54) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 3848U);
    t5 = *((char **)t1);
    t1 = (t0 + 2632U);
    t6 = *((char **)t1);
    t1 = (t0 + 10840U);
    t7 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t6, t1);
    t8 = (t7 - 0);
    t9 = (t8 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t7);
    t10 = (8U * t9);
    t11 = (0 + t10);
    t12 = (t5 + t11);
    t13 = (t0 + 7072);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t12, 8U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB2;

LAB5:    t25 = (t0 + 11022);
    t27 = (t0 + 7072);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t25, 8U);
    xsi_driver_first_trans_fast_port(t27);
    goto LAB2;

LAB7:    t19 = (t0 + 2632U);
    t23 = *((char **)t19);
    t19 = (t0 + 10840U);
    t24 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t23, t19, 0);
    t18 = t24;
    goto LAB9;

LAB10:    t38 = (t0 + 11042);
    t43 = (t0 + 7072);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    memcpy(t47, t38, 8U);
    xsi_driver_first_trans_fast_port(t43);
    goto LAB2;

LAB13:    goto LAB2;

}

static void work_a_3660183523_3212880686_p_4(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(128, ng0);
    t3 = (t0 + 2792U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 == 1)
        goto LAB8;

LAB9:    t3 = (t0 + 2792U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)6);
    t2 = t9;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB11:    t17 = (t0 + 7136);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t17);

LAB2:    t22 = (t0 + 6704);
    *((int *)t22) = 1;

LAB1:    return;
LAB3:    t3 = (t0 + 7136);
    t13 = (t3 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB5:    t3 = (t0 + 2312U);
    t10 = *((char **)t3);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)2);
    t1 = t12;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB12:    goto LAB2;

}

static void work_a_3660183523_3212880686_p_5(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 2792U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)1);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 2792U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)5);
    t1 = t8;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t13 = (t0 + 7200);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t13);

LAB2:    t18 = (t0 + 6720);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 7200);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_3660183523_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(132, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)4);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 7264);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 6736);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 7264);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_3660183523_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3660183523_3212880686_p_0,(void *)work_a_3660183523_3212880686_p_1,(void *)work_a_3660183523_3212880686_p_2,(void *)work_a_3660183523_3212880686_p_3,(void *)work_a_3660183523_3212880686_p_4,(void *)work_a_3660183523_3212880686_p_5,(void *)work_a_3660183523_3212880686_p_6};
	xsi_register_didat("work_a_3660183523_3212880686", "isim/top_top_sch_tb_isim_beh.exe.sim/work/a_3660183523_3212880686.didat");
	xsi_register_executes(pe);
}
