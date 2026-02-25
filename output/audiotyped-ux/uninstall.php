<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('audiotyped_hide_avatars_arrows');
delete_site_option('audiotyped_hide_avatars_arrows');
delete_option('audiotyped_tb_color');
delete_site_option('audiotyped_tb_color');
delete_option('audiotyped_gb_color');
delete_site_option('audiotyped_gb_color');
delete_option('audiotyped_hb_color');
delete_site_option('audiotyped_hb_color');
delete_option('audiotyped_gf_color');
delete_site_option('audiotyped_gf_color');
delete_option('audiotyped_hf_color');
delete_site_option('audiotyped_hf_color');
delete_option('audiotyped_avatar');
delete_site_option('audiotyped_avatar');
delete_option('audiotyped_bubble');
delete_site_option('audiotyped_bubble');
delete_option('audiotyped_mf_size');
delete_site_option('audiotyped_mf_size');
delete_option('audiotyped_df_size');
delete_site_option('audiotyped_df_size');
delete_option('audiotyped_shadow_blur');
delete_site_option('audiotyped_shadow_blur');
delete_option('audiotyped_dgap_size');
delete_site_option('audiotyped_dgap_size');
delete_option('audiotyped_dc_size');
delete_site_option('audiotyped_dc_size');
delete_option('audiotyped_ma_size');
delete_site_option('audiotyped_ma_size');
delete_option('audiotyped_md_size');
delete_site_option('audiotyped_md_size');
delete_option('audiotyped_mbpv_size');
delete_site_option('audiotyped_mbpv_size');
delete_option('audiotyped_mbph_size');
delete_site_option('audiotyped_mbph_size');
delete_option('audiotyped_dbpv_size');
delete_site_option('audiotyped_dbpv_size');
delete_option('audiotyped_dbph_size');
delete_site_option('audiotyped_dbph_size');
delete_option('audiotyped_mgap_size');
delete_site_option('audiotyped_mgap_size');
delete_option('audiotyped_g2b_color');
delete_site_option('audiotyped_g2b_color');
delete_option('audiotyped_g2f_color');
delete_site_option('audiotyped_g2f_color');

