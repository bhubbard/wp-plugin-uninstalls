<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ai_chatbot_easy_integration_version');
delete_site_option('ai_chatbot_easy_integration_version');
delete_option('ai_chatbot_easy_integration_settings');
delete_site_option('ai_chatbot_easy_integration_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('ai_chatbot_easy_integration_daily_cron_hook');

