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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003466049526_0170711435_init();
    work_m_00000000000885919649_1814517970_init();
    work_m_00000000003829556456_0809360755_init();
    work_m_00000000002790170305_2348494203_init();
    work_m_00000000003427966161_0247100207_init();
    work_m_00000000001998847230_2808873750_init();
    work_m_00000000000962886297_1649593976_init();
    work_m_00000000003333869390_0260175702_init();
    work_m_00000000000230397852_0981210017_init();
    work_m_00000000002720495260_2401051870_init();
    work_m_00000000003976184141_1336714068_init();
    work_m_00000000004101241173_4186635533_init();
    work_m_00000000001348011192_2988409229_init();
    work_m_00000000001436753358_1920535107_init();
    work_m_00000000003829556456_1914231310_init();
    work_m_00000000002790170305_4047207963_init();
    work_m_00000000003466049526_1894550251_init();
    work_m_00000000003427966161_1954160719_init();
    work_m_00000000001081922573_0821236287_init();
    work_m_00000000001839561449_3346746394_init();
    work_m_00000000000612458877_2058381144_init();
    work_m_00000000003466049526_1301062491_init();
    work_m_00000000000885919649_1391854468_init();
    work_m_00000000003864894101_3698563887_init();
    work_m_00000000003466049526_0328481590_init();
    work_m_00000000000332221735_3055220159_init();
    work_m_00000000002341257415_2923768715_init();
    work_m_00000000001626624118_2166705237_init();
    work_m_00000000000131822375_1215094991_init();
    work_m_00000000003967643825_0954450265_init();
    work_m_00000000001784013799_3133069533_init();
    work_m_00000000003829556456_0738965319_init();
    work_m_00000000002790170305_3072249183_init();
    work_m_00000000002341257415_3433916719_init();
    work_m_00000000003441056527_0047916259_init();
    work_m_00000000003427966161_0542832500_init();
    work_m_00000000002056686249_1465343641_init();
    work_m_00000000000325580869_1963134630_init();
    work_m_00000000003788211165_0286164271_init();
    work_m_00000000000043224532_1919348379_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000043224532_1919348379");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
