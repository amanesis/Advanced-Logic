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

/* This file is designed for use with ISim build 0x8ddf5b5d */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ISC/gdaratsianos/.gvfs/gdaratsianos on smb-1.isc.tuc.gr/My Videos/Lab3_FINAL/ssdFsmFull.vhd";



static void work_a_2792359989_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned char t14;
    char *t15;
    static char *nl0[] = {&&LAB15, &&LAB16, &&LAB17};

LAB0:    t1 = (t0 + 2344U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);

LAB6:    t2 = (t0 + 2660);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t6 = (t0 + 2660);
    *((int *)t6) = 0;
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 960U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t5 = (t3 == (unsigned char)3);
    if (t5 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1696U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t2 = (char *)((nl0) + t3);
    goto **((char **)t2);

LAB5:    t4 = (t0 + 568U);
    t5 = xsi_signal_has_event(t4);
    if (t5 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    t6 = (t0 + 592U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB10;

LAB11:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2712);
    t6 = (t2 + 32U);
    t7 = *((char **)t6);
    t10 = (t7 + 32U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);

LAB12:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 684U);
    t4 = *((char **)t2);
    t5 = *((unsigned char *)t4);
    t8 = (t5 == (unsigned char)2);
    if (t8 == 1)
        goto LAB30;

LAB31:    t3 = (unsigned char)0;

LAB32:    if (t3 != 0)
        goto LAB27;

LAB29:    t2 = (t0 + 684U);
    t4 = *((char **)t2);
    t5 = *((unsigned char *)t4);
    t8 = (t5 == (unsigned char)3);
    if (t8 == 1)
        goto LAB35;

LAB36:    t3 = (unsigned char)0;

LAB37:    if (t3 != 0)
        goto LAB33;

LAB34:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 5734);
    t6 = (t0 + 2820);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast_port(t6);

LAB28:    goto LAB2;

LAB14:    goto LAB12;

LAB15:    xsi_set_current_line(69, ng0);
    t6 = (t0 + 1052U);
    t7 = *((char **)t6);
    t6 = (t0 + 2748);
    t10 = (t6 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    memcpy(t13, t7, 4U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2784);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 868U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t5 = (t3 == (unsigned char)3);
    if (t5 != 0)
        goto LAB18;

LAB20:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2712);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);

LAB19:    goto LAB14;

LAB16:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 1144U);
    t4 = *((char **)t2);
    t2 = (t0 + 2748);
    t6 = (t2 + 32U);
    t7 = *((char **)t6);
    t10 = (t7 + 32U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 4U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 2784);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 868U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t5 = (t3 == (unsigned char)3);
    if (t5 != 0)
        goto LAB21;

LAB23:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2712);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);

LAB22:    goto LAB14;

LAB17:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 1236U);
    t4 = *((char **)t2);
    t2 = (t0 + 2748);
    t6 = (t2 + 32U);
    t7 = *((char **)t6);
    t10 = (t7 + 32U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 4U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2784);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 868U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t5 = (t3 == (unsigned char)3);
    if (t5 != 0)
        goto LAB24;

LAB26:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 2712);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB25:    goto LAB14;

LAB18:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 2712);
    t6 = (t2 + 32U);
    t7 = *((char **)t6);
    t10 = (t7 + 32U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    goto LAB19;

LAB21:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2712);
    t6 = (t2 + 32U);
    t7 = *((char **)t6);
    t10 = (t7 + 32U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB22;

LAB24:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2712);
    t6 = (t2 + 32U);
    t7 = *((char **)t6);
    t10 = (t7 + 32U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);
    goto LAB25;

LAB27:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 5730);
    t10 = (t0 + 2820);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 32U);
    t15 = *((char **)t13);
    memcpy(t15, t2, 2U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB28;

LAB30:    t2 = (t0 + 776U);
    t6 = *((char **)t2);
    t9 = *((unsigned char *)t6);
    t14 = (t9 == (unsigned char)3);
    t3 = t14;
    goto LAB32;

LAB33:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 5732);
    t10 = (t0 + 2820);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 32U);
    t15 = *((char **)t13);
    memcpy(t15, t2, 2U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB28;

LAB35:    t2 = (t0 + 776U);
    t6 = *((char **)t2);
    t9 = *((unsigned char *)t6);
    t14 = (t9 == (unsigned char)2);
    t3 = t14;
    goto LAB37;

}

static void work_a_2792359989_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    static char *nl0[] = {&&LAB5, &&LAB6, &&LAB7};

LAB0:    t1 = (t0 + 2480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 1696U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(112, ng0);

LAB10:    t2 = (t0 + 2668);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB11;

LAB1:    return;
LAB5:    xsi_set_current_line(113, ng0);
    t5 = (t0 + 5736);
    t7 = (t0 + 2856);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 2U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB6:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 5738);
    t5 = (t0 + 2856);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 2U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB7:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 5740);
    t5 = (t0 + 2856);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 2U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB8:    t3 = (t0 + 2668);
    *((int *)t3) = 0;
    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}


extern void work_a_2792359989_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2792359989_3212880686_p_0,(void *)work_a_2792359989_3212880686_p_1};
	xsi_register_didat("work_a_2792359989_3212880686", "isim/testtoplvl12_isim_beh.exe.sim/work/a_2792359989_3212880686.didat");
	xsi_register_executes(pe);
}
