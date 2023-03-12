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
static const char *ng0 = "C:/Users/nunoo/Documents/XilinxProjects/P1/RegistoDeFlags.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3523585192_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    int t13;
    char *t14;
    int t16;
    char *t17;
    char *t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned char t29;
    unsigned char t30;
    unsigned char t31;

LAB0:    xsi_set_current_line(18, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5315);
    t4 = xsi_mem_cmp(t1, t2, 3U);
    if (t4 == 1)
        goto LAB3;

LAB9:    t5 = (t0 + 5318);
    t7 = xsi_mem_cmp(t5, t2, 3U);
    if (t7 == 1)
        goto LAB4;

LAB10:    t8 = (t0 + 5321);
    t10 = xsi_mem_cmp(t8, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB11:    t11 = (t0 + 5324);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB6;

LAB12:    t14 = (t0 + 5327);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB7;

LAB13:
LAB8:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 3352);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t29 = *((unsigned char *)t2);
    t30 = (t29 == (unsigned char)3);
    if (t30 == 1)
        goto LAB18;

LAB19:    t23 = (unsigned char)0;

LAB20:    if (t23 != 0)
        goto LAB15;

LAB17:
LAB16:    t1 = (t0 + 3272);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(19, ng0);
    t17 = (t0 + 1968U);
    t18 = *((char **)t17);
    t19 = (0 - 4);
    t20 = (t19 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t17 = (t18 + t22);
    t23 = *((unsigned char *)t17);
    t24 = (t0 + 3352);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = t23;
    xsi_driver_first_trans_fast_port(t24);
    goto LAB2;

LAB4:    xsi_set_current_line(20, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t4 = (1 - 4);
    t20 = (t4 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t1 = (t2 + t22);
    t23 = *((unsigned char *)t1);
    t3 = (t0 + 3352);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t23;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB5:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t4 = (2 - 4);
    t20 = (t4 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t1 = (t2 + t22);
    t23 = *((unsigned char *)t1);
    t3 = (t0 + 3352);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t23;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB6:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t4 = (3 - 4);
    t20 = (t4 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t1 = (t2 + t22);
    t23 = *((unsigned char *)t1);
    t3 = (t0 + 3352);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t23;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB7:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t4 = (4 - 4);
    t20 = (t4 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t1 = (t2 + t22);
    t23 = *((unsigned char *)t1);
    t3 = (t0 + 3352);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t23;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB14:;
LAB15:    xsi_set_current_line(27, ng0);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 1968U);
    t6 = *((char **)t3);
    t3 = (t6 + 0);
    memcpy(t3, t5, 5U);
    goto LAB16;

LAB18:    t1 = (t0 + 1472U);
    t31 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    t23 = t31;
    goto LAB20;

}


extern void work_a_3523585192_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3523585192_3212880686_p_0};
	xsi_register_didat("work_a_3523585192_3212880686", "isim/MBtest_isim_beh.exe.sim/work/a_3523585192_3212880686.didat");
	xsi_register_executes(pe);
}
