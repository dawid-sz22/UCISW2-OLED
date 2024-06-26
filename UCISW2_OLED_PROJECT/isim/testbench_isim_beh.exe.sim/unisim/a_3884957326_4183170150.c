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
extern char *IEEE_P_2592010699;
extern char *UNISIM_P_3222816464;

unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );
int unisim_p_3222816464_sub_3182959421_279109243(char *, char *, char *);


static void unisim_a_3884957326_4183170150_p_0(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    int t13;
    unsigned int t14;
    int t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    unsigned char t20;
    unsigned char t21;
    unsigned char t22;
    char *t23;
    unsigned char t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned char t48;
    char *t49;
    char *t50;
    int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned char t55;
    char *t56;
    char *t57;

LAB0:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 4024);
    t1 = xsi_base_array_concat(t1, t6, t7, (char)99, t3, (char)99, t5, (char)101);
    t8 = (t0 + 2048U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (1U + 1U);
    memcpy(t8, t1, t10);
    t1 = (t0 + 2048U);
    t2 = *((char **)t1);
    t10 = (1 - 1);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t4 = (t6 + 0U);
    t7 = (t4 + 0U);
    *((int *)t7) = 1;
    t7 = (t4 + 4U);
    *((int *)t7) = 0;
    t7 = (t4 + 8U);
    *((int *)t7) = -1;
    t13 = (0 - 1);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t7 = (t4 + 12U);
    *((unsigned int *)t7) = t14;
    t15 = unisim_p_3222816464_sub_3182959421_279109243(UNISIM_P_3222816464, t1, t6);
    t7 = (t0 + 2168U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    *((int *)t7) = t15;
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t5 = *((unsigned char *)t2);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t16 = *((unsigned char *)t4);
    t17 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t5, t16);
    t18 = (t17 == (unsigned char)3);
    if (t18 == 1)
        goto LAB5;

LAB6:    t1 = (t0 + 1512U);
    t7 = *((char **)t1);
    t19 = *((unsigned char *)t7);
    t1 = (t0 + 1352U);
    t8 = *((char **)t1);
    t20 = *((unsigned char *)t8);
    t21 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t19, t20);
    t22 = (t21 == (unsigned char)2);
    t3 = t22;

LAB7:    if (t3 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1928U);
    t2 = *((char **)t1);
    t13 = (0 - 3);
    t10 = (t13 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t16 = *((unsigned char *)t1);
    t4 = (t0 + 1928U);
    t7 = *((char **)t4);
    t15 = (1 - 3);
    t14 = (t15 * -1);
    t27 = (1U * t14);
    t28 = (0 + t27);
    t4 = (t7 + t28);
    t17 = *((unsigned char *)t4);
    t18 = (t16 == t17);
    if (t18 == 1)
        goto LAB14;

LAB15:    t5 = (unsigned char)0;

LAB16:    if (t5 == 1)
        goto LAB11;

LAB12:    t3 = (unsigned char)0;

LAB13:    if (t3 != 0)
        goto LAB8;

LAB10:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t5 = *((unsigned char *)t2);
    t16 = (t5 == (unsigned char)2);
    if (t16 == 1)
        goto LAB19;

LAB20:    t3 = (unsigned char)0;

LAB21:    if (t3 != 0)
        goto LAB17;

LAB18:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t5 = *((unsigned char *)t2);
    t16 = (t5 == (unsigned char)3);
    if (t16 == 1)
        goto LAB24;

LAB25:    t3 = (unsigned char)0;

LAB26:    if (t3 != 0)
        goto LAB22;

LAB23:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t5 = *((unsigned char *)t2);
    t16 = (t5 == (unsigned char)2);
    if (t16 == 1)
        goto LAB29;

LAB30:    t3 = (unsigned char)0;

LAB31:    if (t3 != 0)
        goto LAB27;

LAB28:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t5 = *((unsigned char *)t2);
    t16 = (t5 == (unsigned char)3);
    if (t16 == 1)
        goto LAB34;

LAB35:    t3 = (unsigned char)0;

LAB36:    if (t3 != 0)
        goto LAB32;

LAB33:    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)1;

LAB9:
LAB3:    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3672);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3736);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3592);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    t1 = (t0 + 1928U);
    t9 = *((char **)t1);
    t1 = (t0 + 2168U);
    t23 = *((char **)t1);
    t13 = *((int *)t23);
    t15 = (t13 - 3);
    t10 = (t15 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, t13);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t9 + t12);
    t24 = *((unsigned char *)t1);
    t25 = (t0 + 2288U);
    t26 = *((char **)t25);
    t25 = (t26 + 0);
    *((unsigned char *)t25) = t24;
    goto LAB3;

LAB5:    t3 = (unsigned char)1;
    goto LAB7;

LAB8:    t49 = (t0 + 1928U);
    t50 = *((char **)t49);
    t51 = (0 - 3);
    t52 = (t51 * -1);
    t53 = (1U * t52);
    t54 = (0 + t53);
    t49 = (t50 + t54);
    t55 = *((unsigned char *)t49);
    t56 = (t0 + 2288U);
    t57 = *((char **)t56);
    t56 = (t57 + 0);
    *((unsigned char *)t56) = t55;
    goto LAB9;

LAB11:    t26 = (t0 + 1928U);
    t37 = *((char **)t26);
    t38 = (0 - 3);
    t39 = (t38 * -1);
    t40 = (1U * t39);
    t41 = (0 + t40);
    t26 = (t37 + t41);
    t22 = *((unsigned char *)t26);
    t42 = (t0 + 1928U);
    t43 = *((char **)t42);
    t44 = (2 - 3);
    t45 = (t44 * -1);
    t46 = (1U * t45);
    t47 = (0 + t46);
    t42 = (t43 + t47);
    t24 = *((unsigned char *)t42);
    t48 = (t22 == t24);
    t3 = t48;
    goto LAB13;

LAB14:    t8 = (t0 + 1928U);
    t9 = *((char **)t8);
    t29 = (2 - 3);
    t30 = (t29 * -1);
    t31 = (1U * t30);
    t32 = (0 + t31);
    t8 = (t9 + t32);
    t19 = *((unsigned char *)t8);
    t23 = (t0 + 1928U);
    t25 = *((char **)t23);
    t33 = (3 - 3);
    t34 = (t33 * -1);
    t35 = (1U * t34);
    t36 = (0 + t35);
    t23 = (t25 + t36);
    t20 = *((unsigned char *)t23);
    t21 = (t19 == t20);
    t5 = t21;
    goto LAB16;

LAB17:    t9 = (t0 + 1928U);
    t23 = *((char **)t9);
    t29 = (0 - 3);
    t30 = (t29 * -1);
    t31 = (1U * t30);
    t32 = (0 + t31);
    t9 = (t23 + t32);
    t20 = *((unsigned char *)t9);
    t25 = (t0 + 2288U);
    t26 = *((char **)t25);
    t25 = (t26 + 0);
    *((unsigned char *)t25) = t20;
    goto LAB9;

LAB19:    t1 = (t0 + 1928U);
    t4 = *((char **)t1);
    t13 = (0 - 3);
    t10 = (t13 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t4 + t12);
    t17 = *((unsigned char *)t1);
    t7 = (t0 + 1928U);
    t8 = *((char **)t7);
    t15 = (1 - 3);
    t14 = (t15 * -1);
    t27 = (1U * t14);
    t28 = (0 + t27);
    t7 = (t8 + t28);
    t18 = *((unsigned char *)t7);
    t19 = (t17 == t18);
    t3 = t19;
    goto LAB21;

LAB22:    t9 = (t0 + 1928U);
    t23 = *((char **)t9);
    t29 = (2 - 3);
    t30 = (t29 * -1);
    t31 = (1U * t30);
    t32 = (0 + t31);
    t9 = (t23 + t32);
    t20 = *((unsigned char *)t9);
    t25 = (t0 + 2288U);
    t26 = *((char **)t25);
    t25 = (t26 + 0);
    *((unsigned char *)t25) = t20;
    goto LAB9;

LAB24:    t1 = (t0 + 1928U);
    t4 = *((char **)t1);
    t13 = (2 - 3);
    t10 = (t13 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t4 + t12);
    t17 = *((unsigned char *)t1);
    t7 = (t0 + 1928U);
    t8 = *((char **)t7);
    t15 = (3 - 3);
    t14 = (t15 * -1);
    t27 = (1U * t14);
    t28 = (0 + t27);
    t7 = (t8 + t28);
    t18 = *((unsigned char *)t7);
    t19 = (t17 == t18);
    t3 = t19;
    goto LAB26;

LAB27:    t9 = (t0 + 1928U);
    t23 = *((char **)t9);
    t29 = (0 - 3);
    t30 = (t29 * -1);
    t31 = (1U * t30);
    t32 = (0 + t31);
    t9 = (t23 + t32);
    t20 = *((unsigned char *)t9);
    t25 = (t0 + 2288U);
    t26 = *((char **)t25);
    t25 = (t26 + 0);
    *((unsigned char *)t25) = t20;
    goto LAB9;

LAB29:    t1 = (t0 + 1928U);
    t4 = *((char **)t1);
    t13 = (0 - 3);
    t10 = (t13 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t4 + t12);
    t17 = *((unsigned char *)t1);
    t7 = (t0 + 1928U);
    t8 = *((char **)t7);
    t15 = (2 - 3);
    t14 = (t15 * -1);
    t27 = (1U * t14);
    t28 = (0 + t27);
    t7 = (t8 + t28);
    t18 = *((unsigned char *)t7);
    t19 = (t17 == t18);
    t3 = t19;
    goto LAB31;

LAB32:    t9 = (t0 + 1928U);
    t23 = *((char **)t9);
    t29 = (1 - 3);
    t30 = (t29 * -1);
    t31 = (1U * t30);
    t32 = (0 + t31);
    t9 = (t23 + t32);
    t20 = *((unsigned char *)t9);
    t25 = (t0 + 2288U);
    t26 = *((char **)t25);
    t25 = (t26 + 0);
    *((unsigned char *)t25) = t20;
    goto LAB9;

LAB34:    t1 = (t0 + 1928U);
    t4 = *((char **)t1);
    t13 = (1 - 3);
    t10 = (t13 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t4 + t12);
    t17 = *((unsigned char *)t1);
    t7 = (t0 + 1928U);
    t8 = *((char **)t7);
    t15 = (3 - 3);
    t14 = (t15 * -1);
    t27 = (1U * t14);
    t28 = (0 + t27);
    t7 = (t8 + t28);
    t18 = *((unsigned char *)t7);
    t19 = (t17 == t18);
    t3 = t19;
    goto LAB36;

}


extern void unisim_a_3884957326_4183170150_init()
{
	static char *pe[] = {(void *)unisim_a_3884957326_4183170150_p_0};
	xsi_register_didat("unisim_a_3884957326_4183170150", "isim/testbench_isim_beh.exe.sim/unisim/a_3884957326_4183170150.didat");
	xsi_register_executes(pe);
}
