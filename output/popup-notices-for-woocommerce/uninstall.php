<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('ttt_pnwc_opt_enable');
delete_site_option('ttt_pnwc_opt_enable');
delete_option('ttt_pnwc_opt_hide_error_enable');
delete_site_option('ttt_pnwc_opt_hide_error_enable');
delete_option('ttt_pnwc_opt_hide_success_enable');
delete_site_option('ttt_pnwc_opt_hide_success_enable');
delete_option('ttt_pnwc_opt_hide_info_enable');
delete_site_option('ttt_pnwc_opt_hide_info_enable');
delete_option('ttt_pnwc_opt_allowed_device_types');
delete_site_option('ttt_pnwc_opt_allowed_device_types');
delete_option('ttt_pnwc_opt_click_inside_close');
delete_site_option('ttt_pnwc_opt_click_inside_close');
delete_option('ttt_pnwc_opt_type_error_enable');
delete_site_option('ttt_pnwc_opt_type_error_enable');
delete_option('ttt_pnwc_opt_type_info_enable');
delete_site_option('ttt_pnwc_opt_type_info_enable');
delete_option('ttt_pnwc_opt_type_success_enable');
delete_site_option('ttt_pnwc_opt_type_success_enable');
delete_option('ttt_pnwc_opt_ajax');
delete_site_option('ttt_pnwc_opt_ajax');
delete_option('ttt_pnwc_opt_ignore_msg_field');
delete_site_option('ttt_pnwc_opt_ignore_msg_field');
delete_option('ttt_pnwc_opt_ignore_search_method');
delete_site_option('ttt_pnwc_opt_ignore_search_method');
delete_option('ttt_pnwc_opt_ignore_msg_regex_f');
delete_site_option('ttt_pnwc_opt_ignore_msg_regex_f');
delete_option('ttt_pnwc_opt_prevent_closing_if_clicking_out');
delete_site_option('ttt_pnwc_opt_prevent_closing_if_clicking_out');
delete_option('ttt_pnwc_opt_audio_enable');
delete_site_option('ttt_pnwc_opt_audio_enable');
delete_option('ttt_pnwc_opt_micromodal_load_method');
delete_site_option('ttt_pnwc_opt_micromodal_load_method');

