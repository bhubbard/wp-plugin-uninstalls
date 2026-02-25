<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emc_setting_countries');
delete_site_option('emc_setting_countries');
delete_option('emc_setting_number');
delete_site_option('emc_setting_number');
delete_option('emc_setting_welcome');
delete_site_option('emc_setting_welcome');
delete_option('emc_setting_account_sid');
delete_site_option('emc_setting_account_sid');
delete_option('emc_setting_auth_token');
delete_site_option('emc_setting_auth_token');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

