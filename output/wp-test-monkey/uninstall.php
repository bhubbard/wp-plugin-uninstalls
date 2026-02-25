<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WPTestMonkey_do_shortcode_on_output_buffer');
delete_site_option('WPTestMonkey_do_shortcode_on_output_buffer');
delete_option('WPTestMonkey_show_dashboard_widget');
delete_site_option('WPTestMonkey_show_dashboard_widget');
delete_option('WPTestMonkey_current_migration');
delete_site_option('WPTestMonkey_current_migration');

