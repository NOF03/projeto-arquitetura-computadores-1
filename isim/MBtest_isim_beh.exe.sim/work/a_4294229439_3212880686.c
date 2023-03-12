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
static const char *ng0 = "C:/Users/nunoo/Documents/XilinxProjects/P1/Mux_PC.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_4294229439_3212880686_p_0(char *t0)
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
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned char t30;
    unsigned char t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned char t35;
    unsigned char t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned char t40;
    unsigned char t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned char t45;
    unsigned char t46;
    int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned char t51;
    unsigned char t52;
    int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned char t57;
    unsigned char t58;
    int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned char t63;
    unsigned char t64;
    unsigned char t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;

LAB0:    xsi_set_current_line(16, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4812);
    t4 = xsi_mem_cmp(t1, t2, 3U);
    if (t4 == 1)
        goto LAB3;

LAB9:    t5 = (t0 + 4815);
    t7 = xsi_mem_cmp(t5, t2, 3U);
    if (t7 == 1)
        goto LAB4;

LAB10:    t8 = (t0 + 4818);
    t10 = xsi_mem_cmp(t8, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB11:    t11 = (t0 + 4821);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB6;

LAB12:    t14 = (t0 + 4824);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB7;

LAB13:
LAB8:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 3072);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(17, ng0);
    t17 = (t0 + 1032U);
    t18 = *((char **)t17);
    t19 = *((unsigned char *)t18);
    t17 = (t0 + 3072);
    t20 = (t17 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = t19;
    xsi_driver_first_trans_fast_port(t17);
    goto LAB2;

LAB4:    xsi_set_current_line(18, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t4 = (0 - 7);
    t24 = (t4 * -1);
    t25 = (1U * t24);
    t26 = (0 + t25);
    t1 = (t2 + t26);
    t19 = *((unsigned char *)t1);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t7 = (1 - 7);
    t27 = (t7 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t3 = (t5 + t29);
    t30 = *((unsigned char *)t3);
    t31 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t19, t30);
    t6 = (t0 + 1192U);
    t8 = *((char **)t6);
    t10 = (2 - 7);
    t32 = (t10 * -1);
    t33 = (1U * t32);
    t34 = (0 + t33);
    t6 = (t8 + t34);
    t35 = *((unsigned char *)t6);
    t36 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t31, t35);
    t9 = (t0 + 1192U);
    t11 = *((char **)t9);
    t13 = (3 - 7);
    t37 = (t13 * -1);
    t38 = (1U * t37);
    t39 = (0 + t38);
    t9 = (t11 + t39);
    t40 = *((unsigned char *)t9);
    t41 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t36, t40);
    t12 = (t0 + 1192U);
    t14 = *((char **)t12);
    t16 = (4 - 7);
    t42 = (t16 * -1);
    t43 = (1U * t42);
    t44 = (0 + t43);
    t12 = (t14 + t44);
    t45 = *((unsigned char *)t12);
    t46 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t41, t45);
    t15 = (t0 + 1192U);
    t17 = *((char **)t15);
    t47 = (5 - 7);
    t48 = (t47 * -1);
    t49 = (1U * t48);
    t50 = (0 + t49);
    t15 = (t17 + t50);
    t51 = *((unsigned char *)t15);
    t52 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t46, t51);
    t18 = (t0 + 1192U);
    t20 = *((char **)t18);
    t53 = (6 - 7);
    t54 = (t53 * -1);
    t55 = (1U * t54);
    t56 = (0 + t55);
    t18 = (t20 + t56);
    t57 = *((unsigned char *)t18);
    t58 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t52, t57);
    t21 = (t0 + 1192U);
    t22 = *((char **)t21);
    t59 = (7 - 7);
    t60 = (t59 * -1);
    t61 = (1U * t60);
    t62 = (0 + t61);
    t21 = (t22 + t62);
    t63 = *((unsigned char *)t21);
    t64 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t58, t63);
    t65 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t64);
    t23 = (t0 + 3072);
    t66 = (t23 + 56U);
    t67 = *((char **)t66);
    t68 = (t67 + 56U);
    t69 = *((char **)t68);
    *((unsigned char *)t69) = t65;
    xsi_driver_first_trans_fast_port(t23);
    goto LAB2;

LAB5:    xsi_set_current_line(19, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t4 = (7 - 7);
    t24 = (t4 * -1);
    t25 = (1U * t24);
    t26 = (0 + t25);
    t1 = (t2 + t26);
    t19 = *((unsigned char *)t1);
    t3 = (t0 + 3072);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t19;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB6:    xsi_set_current_line(20, ng0);
    t1 = (t0 + 3072);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB7:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 3072);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB14:;
}


extern void work_a_4294229439_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4294229439_3212880686_p_0};
	xsi_register_didat("work_a_4294229439_3212880686", "isim/MBtest_isim_beh.exe.sim/work/a_4294229439_3212880686.didat");
	xsi_register_executes(pe);
}
