-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zm_fb_option', 'zm_tw_option', 'zm_in_option', 'zm_pt_option', 'zm_gp_option', 'zm_ld_option', 'zmiconw_option', 'zmiconmt_option', 'zmiconmb_option', 'zmiconml_option', 'zmiconmr_option', 'zm_be_option', 'zm_bl_option', 'zm_de_option', 'zm_dr_option', 'zm_fl_option', 'zm_la_option', 'zm_my_option', 'zm_rs_option', 'zm_sk_option', 'zm_tu_option', 'zm_vi_option', 'zm_vk_option', 'zm_wp_option', 'zm_yt_option');

