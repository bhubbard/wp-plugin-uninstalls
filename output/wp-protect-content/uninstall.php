<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpc_disallow_copy_content');
delete_site_option('wpc_disallow_copy_content');
delete_option('wpc_disallow_f12');
delete_site_option('wpc_disallow_f12');
delete_option('wpc_disallow_f12_msg');
delete_site_option('wpc_disallow_f12_msg');
delete_option('wpc_disallow_right_click');
delete_site_option('wpc_disallow_right_click');
delete_option('wpc_right_click_msg');
delete_site_option('wpc_right_click_msg');
delete_option('wpc_disallow_drag');
delete_site_option('wpc_disallow_drag');
delete_option('wpc_alert_style');
delete_site_option('wpc_alert_style');
delete_option('wpc_hide_alert');
delete_site_option('wpc_hide_alert');
delete_option('wpc_debug_mode');
delete_site_option('wpc_debug_mode');

