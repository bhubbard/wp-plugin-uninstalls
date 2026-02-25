<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_wc_cp_cl_use_modal');
delete_site_option('alg_wc_cp_cl_use_modal');
delete_option('alg_wc_cp_default_btn_title');
delete_site_option('alg_wc_cp_default_btn_title');
delete_option('alg_wc_cp_enable');
delete_site_option('alg_wc_cp_enable');
delete_option('alg_wc_cp_cl_widget_link');
delete_site_option('alg_wc_cp_cl_widget_link');
delete_option('alg_wc_cp_fontawesome');
delete_site_option('alg_wc_cp_fontawesome');
delete_option('alg_wc_cp_default_btn_single');
delete_site_option('alg_wc_cp_default_btn_single');
delete_option('alg_wc_cp_default_btn_single_pos');
delete_site_option('alg_wc_cp_default_btn_single_pos');
delete_option('alg_wc_cp_default_btn_single_priority');
delete_site_option('alg_wc_cp_default_btn_single_priority');
delete_option('alg_wc_cp_default_btn_loop');
delete_site_option('alg_wc_cp_default_btn_loop');
delete_option('alg_wc_cp_default_btn_loop_priority');
delete_site_option('alg_wc_cp_default_btn_loop_priority');
delete_option('alg_wc_cp_version');
delete_site_option('alg_wc_cp_version');
delete_option('alg_wc_cp_cl_cols');
delete_site_option('alg_wc_cp_cl_cols');
delete_option('alg_wc_cp_page_id');
delete_site_option('alg_wc_cp_page_id');
delete_option('alg_wc_cp_cl_field_image');
delete_site_option('alg_wc_cp_cl_field_image');
delete_option('alg_wc_cp_cl_field_title');
delete_site_option('alg_wc_cp_cl_field_title');
delete_option('alg_wc_cp_cl_modal_title');
delete_site_option('alg_wc_cp_cl_modal_title');
delete_option('alg_wc_cp_cl_modal_subtitle');
delete_site_option('alg_wc_cp_cl_modal_subtitle');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('alg_wc_cp_cl_empty_text');
delete_site_option('alg_wc_cp_cl_empty_text');

