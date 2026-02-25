<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mblzr_smartphone_theme');
delete_site_option('mblzr_smartphone_theme');
delete_option('mblzr_enabled_side_module_themes_settings');
delete_site_option('mblzr_enabled_side_module_themes_settings');
delete_option('mblzr_do_log');
delete_site_option('mblzr_do_log');
delete_option('mblzr_do_log_date');
delete_site_option('mblzr_do_log_date');

