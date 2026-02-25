<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('bookit_styles_version');
delete_site_option('bookit_styles_version');
delete_option('stm_bookit_appointment_created');
delete_site_option('stm_bookit_appointment_created');
delete_option('bookit_feedback_added');
delete_site_option('bookit_feedback_added');
delete_option('bookit_import_file');
delete_site_option('bookit_import_file');
delete_option('bookit_settings');
delete_site_option('bookit_settings');
delete_option('bookit_version');
delete_site_option('bookit_version');
delete_option('bookit_db_version');
delete_site_option('bookit_db_version');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('stm_bookit_single_notice_setting');
delete_site_transient('stm_bookit_single_notice_setting');
delete_transient('bookit_categories');
delete_site_transient('bookit_categories');
delete_transient('bookit_services');
delete_site_transient('bookit_services');
delete_transient('stm_bookit_notice_setting');
delete_site_transient('stm_bookit_notice_setting');

