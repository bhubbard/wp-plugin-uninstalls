<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('momo_rssfeed_openai_settings');
delete_site_option('momo_rssfeed_openai_settings');
delete_option('momo_autoblog_openai_settings');
delete_site_option('momo_autoblog_openai_settings');
delete_option('momo_acg_eo_openai_settings');
delete_site_option('momo_acg_eo_openai_settings');
delete_option('momo_acg_rssfeed_event_list');
delete_site_option('momo_acg_rssfeed_event_list');
delete_option('momo_acg_chatbot_settings');
delete_site_option('momo_acg_chatbot_settings');
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
delete_option('momo_wsw_api_cache_settings');
delete_site_option('momo_wsw_api_cache_settings');
delete_option('momo_acg_eo_searchlog_settings');
delete_site_option('momo_acg_eo_searchlog_settings');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');

// Clear Cron Jobs
wp_clear_scheduled_hook('momo_store_email_template_event');
wp_clear_scheduled_hook('momo_delete_old_search_logs_cron');

