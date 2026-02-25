<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('msv_amspsbtt_page_scroll_back_to_top_icon');
delete_site_option('msv_amspsbtt_page_scroll_back_to_top_icon');
delete_option('msv_amspsbtt_page_scroll_back_to_top_style');
delete_site_option('msv_amspsbtt_page_scroll_back_to_top_style');
delete_option('msv_amspsbtt_page_scroll_back_to_top_layout');
delete_site_option('msv_amspsbtt_page_scroll_back_to_top_layout');
delete_option('msv_amspsbtt_page_scroll_back_to_top_advanced');
delete_site_option('msv_amspsbtt_page_scroll_back_to_top_advanced');

