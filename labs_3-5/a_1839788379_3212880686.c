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
static const char *ng0 = "/home/ISC/gdaratsianos/.gvfs/gdaratsianos on smb-1.isc.tuc.gr/My Videos/Lab3_FINAL/ssdFSM2.vhd";



static void work_a_1839788379_3212880686_p_0(char *t0)
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
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    static char *nl0[] = {&&LAB15, &&LAB16, &&LAB17, &&LAB18};

LAB0:    t1 = (t0 + 1884U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);

LAB6:    t2 = (t0 + 2200);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t6 = (t0 + 2200);
    *((int *)t6) = 0;
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 960U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t5 = (t3 == (unsigned char)3);
    if (t5 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1236U);
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

LAB11:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2252);
    t6 = (t2 + 32U);
    t7 = *((char **)t6);
    t10 = (t7 + 32U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2288);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);

LAB12:    goto LAB2;

LAB14:    goto LAB12;

LAB15:    xsi_set_current_line(64, ng0);
    t6 = (t0 + 776U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    if (t9 == 1)
        goto LAB22;

LAB23:    t5 = (unsigned char)0;

LAB24:    if (t5 != 0)
        goto LAB19;

LAB21:    t2 = (t0 + 868U);
    t4 = *((char **)t2);
    t5 = *((unsigned char *)t4);
    t8 = (t5 == (unsigned char)3);
    if (t8 == 1)
        goto LAB27;

LAB28:    t3 = (unsigned char)0;

LAB29:    if (t3 != 0)
        goto LAB25;

LAB26:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2252);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 2288);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);

LAB20:    goto LAB14;

LAB16:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 776U);
    t4 = *((char **)t2);
    t5 = *((unsigned char *)t4);
    t8 = (t5 == (unsigned char)3);
    if (t8 == 1)
        goto LAB33;

LAB34:    t3 = (unsigned char)0;

LAB35:    if (t3 != 0)
        goto LAB30;

LAB32:    t2 = (t0 + 868U);
    t4 = *((char **)t2);
    t5 = *((unsigned char *)t4);
    t8 = (t5 == (unsigned char)3);
    if (t8 == 1)
        goto LAB38;

LAB39:    t3 = (unsigned char)0;

LAB40:    if (t3 != 0)
        goto LAB36;

LAB37:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2252);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2288);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);

LAB31:    goto LAB14;

LAB17:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 776U);
    t4 = *((char **)t2);
    t5 = *((unsigned char *)t4);
    t8 = (t5 == (unsigned char)3);
    if (t8 == 1)
        goto LAB44;

LAB45:    t3 = (unsigned char)0;

LAB46:    if (t3 != 0)
        goto LAB41;

LAB43:    t2 = (t0 + 868U);
    t4 = *((char **)t2);
    t5 = *((unsigned char *)t4);
    t8 = (t5 == (unsigned char)3);
    if (t8 == 1)
        goto LAB49;

LAB50:    t3 = (unsigned char)0;

LAB51:    if (t3 != 0)
        goto LAB47;

LAB48:
LAB42:    goto LAB14;

LAB18:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 776U);
    t4 = *((char **)t2);
    t5 = *((unsigned char *)t4);
    t8 = (t5 == (unsigned char)3);
    if (t8 == 1)
        goto LAB55;

LAB56:    t3 = (unsigned char)0;

LAB57:    if (t3 != 0)
        goto LAB52;

LAB54:    t2 = (t0 + 868U);
    t4 = *((char **)t2);
    t5 = *((unsigned char *)t4);
    t8 = (t5 == (unsigned char)3);
    if (t8 == 1)
        goto LAB60;

LAB61:    t3 = (unsigned char)0;

LAB62:    if (t3 != 0)
        goto LAB58;

LAB59:
LAB53:    goto LAB14;

LAB19:    xsi_set_current_line(65, ng0);
    t6 = (t0 + 2252);
    t11 = (t6 + 32U);
    t14 = *((char **)t11);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2288);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    goto LAB20;

LAB22:    t6 = (t0 + 868U);
    t10 = *((char **)t6);
    t12 = *((unsigned char *)t10);
    t13 = (t12 == (unsigned char)2);
    t5 = t13;
    goto LAB24;

LAB25:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2252);
    t7 = (t2 + 32U);
    t10 = *((char **)t7);
    t11 = (t10 + 32U);
    t14 = *((char **)t11);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 2288);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB20;

LAB27:    t2 = (t0 + 776U);
    t6 = *((char **)t2);
    t9 = *((unsigned char *)t6);
    t12 = (t9 == (unsigned char)2);
    t3 = t12;
    goto LAB29;

LAB30:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2252);
    t7 = (t2 + 32U);
    t10 = *((char **)t7);
    t11 = (t10 + 32U);
    t14 = *((char **)t11);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2288);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    goto LAB31;

LAB33:    t2 = (t0 + 868U);
    t6 = *((char **)t2);
    t9 = *((unsigned char *)t6);
    t12 = (t9 == (unsigned char)2);
    t3 = t12;
    goto LAB35;

LAB36:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 2252);
    t7 = (t2 + 32U);
    t10 = *((char **)t7);
    t11 = (t10 + 32U);
    t14 = *((char **)t11);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2288);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB31;

LAB38:    t2 = (t0 + 776U);
    t6 = *((char **)t2);
    t9 = *((unsigned char *)t6);
    t12 = (t9 == (unsigned char)2);
    t3 = t12;
    goto LAB40;

LAB41:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 2252);
    t7 = (t2 + 32U);
    t10 = *((char **)t7);
    t11 = (t10 + 32U);
    t14 = *((char **)t11);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2288);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    goto LAB42;

LAB44:    t2 = (t0 + 868U);
    t6 = *((char **)t2);
    t9 = *((unsigned char *)t6);
    t12 = (t9 == (unsigned char)2);
    t3 = t12;
    goto LAB46;

LAB47:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 2252);
    t7 = (t2 + 32U);
    t10 = *((char **)t7);
    t11 = (t10 + 32U);
    t14 = *((char **)t11);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 2288);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB42;

LAB49:    t2 = (t0 + 776U);
    t6 = *((char **)t2);
    t9 = *((unsigned char *)t6);
    t12 = (t9 == (unsigned char)2);
    t3 = t12;
    goto LAB51;

LAB52:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 2252);
    t7 = (t2 + 32U);
    t10 = *((char **)t7);
    t11 = (t10 + 32U);
    t14 = *((char **)t11);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 2288);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    goto LAB53;

LAB55:    t2 = (t0 + 868U);
    t6 = *((char **)t2);
    t9 = *((unsigned char *)t6);
    t12 = (t9 == (unsigned char)2);
    t3 = t12;
    goto LAB57;

LAB58:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 2252);
    t7 = (t2 + 32U);
    t10 = *((char **)t7);
    t11 = (t10 + 32U);
    t14 = *((char **)t11);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 2288);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB53;

LAB60:    t2 = (t0 + 776U);
    t6 = *((char **)t2);
    t9 = *((unsigned char *)t6);
    t12 = (t9 == (unsigned char)2);
    t3 = t12;
    goto LAB62;

}

static void work_a_1839788379_3212880686_p_1(char *t0)
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
    static char *nl0[] = {&&LAB5, &&LAB6, &&LAB7, &&LAB8};

LAB0:    t1 = (t0 + 2020U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 1236U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(128, ng0);

LAB11:    t2 = (t0 + 2208);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB12;

LAB1:    return;
LAB5:    xsi_set_current_line(129, ng0);
    t5 = (t0 + 4574);
    t7 = (t0 + 2324);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 4U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB6:    xsi_set_current_line(129, ng0);
    t2 = (t0 + 4578);
    t5 = (t0 + 2324);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB7:    xsi_set_current_line(129, ng0);
    t2 = (t0 + 4582);
    t5 = (t0 + 2324);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB8:    xsi_set_current_line(129, ng0);
    t2 = (t0 + 4586);
    t5 = (t0 + 2324);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB9:    t3 = (t0 + 2208);
    *((int *)t3) = 0;
    goto LAB2;

LAB10:    goto LAB9;

LAB12:    goto LAB10;

}


extern void work_a_1839788379_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1839788379_3212880686_p_0,(void *)work_a_1839788379_3212880686_p_1};
	xsi_register_didat("work_a_1839788379_3212880686", "isim/testtoplvl12_isim_beh.exe.sim/work/a_1839788379_3212880686.didat");
	xsi_register_executes(pe);
}
