<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wppssl_ssl_activated');
delete_site_option('wppssl_ssl_activated');
delete_option('wpssl_basedomain');
delete_site_option('wpssl_basedomain');
delete_option('wpssl_iswildcard');
delete_site_option('wpssl_iswildcard');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('wpssl_current_certificate');
delete_site_option('wpssl_current_certificate');
delete_option('wpssl_cert_expired');
delete_site_option('wpssl_cert_expired');
delete_option('wpssl_cert_renewed');
delete_site_option('wpssl_cert_renewed');
delete_option('wpssl_no_renew_yet');
delete_site_option('wpssl_no_renew_yet');
delete_option('wpssl_scheduled_autorenew');
delete_site_option('wpssl_scheduled_autorenew');
delete_option('wpssl_autoinstall');
delete_site_option('wpssl_autoinstall');
delete_option('wpssl_renew_ran');
delete_site_option('wpssl_renew_ran');
delete_option('wpssl_email');
delete_site_option('wpssl_email');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');
wp_clear_scheduled_hook('check_every_day');

