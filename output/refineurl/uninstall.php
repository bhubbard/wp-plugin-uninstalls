<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('saprfurl_hide_login_page');
delete_site_option('saprfurl_hide_login_page');
delete_option('saprfurl_hide_redirect_page');
delete_site_option('saprfurl_hide_redirect_page');
delete_option('saprfurl_custom_redirect');
delete_site_option('saprfurl_custom_redirect');
delete_option('saprfurl_internal_link');
delete_site_option('saprfurl_internal_link');
delete_option('saprfurl_external_link');
delete_site_option('saprfurl_external_link');
delete_option('saprfurl_internal_follow');
delete_site_option('saprfurl_internal_follow');
delete_option('saprfurl_user_redirect_url_after_logout');
delete_site_option('saprfurl_user_redirect_url_after_logout');
delete_option('saprfurl_user_redirect_url_after_login');
delete_site_option('saprfurl_user_redirect_url_after_login');
delete_option('saprfurl_user_redirect_url_after_registration');
delete_site_option('saprfurl_user_redirect_url_after_registration');
delete_option('saprfurl_external_follow');
delete_site_option('saprfurl_external_follow');
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

