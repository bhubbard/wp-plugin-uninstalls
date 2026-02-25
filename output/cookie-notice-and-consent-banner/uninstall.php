<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cncb_show_banner');
delete_site_option('cncb_show_banner');
delete_option('cncb_custom_css');
delete_site_option('cncb_custom_css');
delete_option('cncb_refuse_code');
delete_site_option('cncb_refuse_code');
delete_option('cncb_refuse_code_body');
delete_site_option('cncb_refuse_code_body');
delete_option('cncb_by_scroll');
delete_site_option('cncb_by_scroll');
delete_option('cncb_by_click');
delete_site_option('cncb_by_click');
delete_option('cncb_by_delay');
delete_site_option('cncb_by_delay');
delete_option('cncb_refreshonallow');
delete_site_option('cncb_refreshonallow');
delete_option('cncb_by_scroll_value');
delete_site_option('cncb_by_scroll_value');
delete_option('cncb_by_delay_value');
delete_site_option('cncb_by_delay_value');

// Delete Transients
delete_transient('cncb_admin_notice');
delete_site_transient('cncb_admin_notice');

