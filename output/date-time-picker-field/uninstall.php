<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_dtpicker_new_integration');
delete_site_option('_dtpicker_new_integration');
delete_option('dtp_integration');
delete_site_option('dtp_integration');
delete_option('dtpicker');
delete_site_option('dtpicker');
delete_option('dtpicker_advanced');
delete_site_option('dtpicker_advanced');
delete_option('_dtpicker_lite_imported_integration');
delete_site_option('_dtpicker_lite_imported_integration');
delete_option('_dtpicker_pro_imported_integration');
delete_site_option('_dtpicker_pro_imported_integration');
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

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');

