<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dp_import_url');
delete_site_option('dp_import_url');
delete_option('dp_import_verification_key');
delete_site_option('dp_import_verification_key');
delete_option('dp_import_cron_frequency');
delete_site_option('dp_import_cron_frequency');
delete_option('_transient_timeout_dp_import_updating');
delete_site_option('_transient_timeout_dp_import_updating');
delete_option('dp_import_verified');
delete_site_option('dp_import_verified');

// Delete Transients
delete_transient('dp_import_errors');
delete_site_transient('dp_import_errors');
delete_transient('dp_import_notice');
delete_site_transient('dp_import_notice');
delete_transient('dp_import_updating');
delete_site_transient('dp_import_updating');

// Clear Cron Jobs
wp_clear_scheduled_hook('dp_import_update_data');

