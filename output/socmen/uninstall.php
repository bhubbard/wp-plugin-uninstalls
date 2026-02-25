<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zm_fb_option');
delete_site_option('zm_fb_option');
delete_option('zm_tw_option');
delete_site_option('zm_tw_option');
delete_option('zm_in_option');
delete_site_option('zm_in_option');
delete_option('zm_pt_option');
delete_site_option('zm_pt_option');
delete_option('zm_gp_option');
delete_site_option('zm_gp_option');
delete_option('zm_ld_option');
delete_site_option('zm_ld_option');
delete_option('zmiconw_option');
delete_site_option('zmiconw_option');
delete_option('zmiconmt_option');
delete_site_option('zmiconmt_option');
delete_option('zmiconmb_option');
delete_site_option('zmiconmb_option');
delete_option('zmiconml_option');
delete_site_option('zmiconml_option');
delete_option('zmiconmr_option');
delete_site_option('zmiconmr_option');
delete_option('zm_be_option');
delete_site_option('zm_be_option');
delete_option('zm_bl_option');
delete_site_option('zm_bl_option');
delete_option('zm_de_option');
delete_site_option('zm_de_option');
delete_option('zm_dr_option');
delete_site_option('zm_dr_option');
delete_option('zm_fl_option');
delete_site_option('zm_fl_option');
delete_option('zm_la_option');
delete_site_option('zm_la_option');
delete_option('zm_my_option');
delete_site_option('zm_my_option');
delete_option('zm_rs_option');
delete_site_option('zm_rs_option');
delete_option('zm_sk_option');
delete_site_option('zm_sk_option');
delete_option('zm_tu_option');
delete_site_option('zm_tu_option');
delete_option('zm_vi_option');
delete_site_option('zm_vi_option');
delete_option('zm_vk_option');
delete_site_option('zm_vk_option');
delete_option('zm_wp_option');
delete_site_option('zm_wp_option');
delete_option('zm_yt_option');
delete_site_option('zm_yt_option');

