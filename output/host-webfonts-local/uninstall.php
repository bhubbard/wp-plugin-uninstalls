<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('omgf_settings');
delete_site_option('omgf_settings');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');
delete_transient('omgf_pro_run_google_fonts_checker');
delete_site_transient('omgf_pro_run_google_fonts_checker');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

