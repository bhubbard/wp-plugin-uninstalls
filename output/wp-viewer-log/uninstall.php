<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpvl-options');
delete_site_option('wpvl-options');
delete_option('wpvl-version');
delete_site_option('wpvl-version');

// Delete Transients
delete_transient('wpvl_log_error');
delete_site_transient('wpvl_log_error');
delete_transient('wpvl_config_error');
delete_site_transient('wpvl_config_error');

