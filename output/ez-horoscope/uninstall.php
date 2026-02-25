<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ezhp_summaries_cache_version');
delete_site_option('ezhp_summaries_cache_version');
delete_option('ezhp_horoscope_activation_guid');
delete_site_option('ezhp_horoscope_activation_guid');
delete_option('ezhp_voice_agent_id');
delete_site_option('ezhp_voice_agent_id');
delete_option('ezhp_voice_api_key_last4');
delete_site_option('ezhp_voice_api_key_last4');
delete_option('ezhp_voice_api_key');
delete_site_option('ezhp_voice_api_key');
delete_option('ezhp_agent_widget_ids');
delete_site_option('ezhp_agent_widget_ids');
delete_option('ezhp_horoscope_background_color');
delete_site_option('ezhp_horoscope_background_color');
delete_option('ezhp_horoscope_font');
delete_site_option('ezhp_horoscope_font');
delete_option('ezhp_horoscope_font_size');
delete_site_option('ezhp_horoscope_font_size');
delete_option('ezhp_horoscope_font_color');
delete_site_option('ezhp_horoscope_font_color');
delete_option('ezhp_horoscope_include_backlink');
delete_site_option('ezhp_horoscope_include_backlink');
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

