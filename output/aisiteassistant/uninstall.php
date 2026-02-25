<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aisiteassistant_chat_enabled');
delete_site_option('aisiteassistant_chat_enabled');
delete_option('aisiteassistant_last_db_time');
delete_site_option('aisiteassistant_last_db_time');
delete_option('aisiteassistant_update_frequency');
delete_site_option('aisiteassistant_update_frequency');
delete_option('aisiteassistant_last_url');
delete_site_option('aisiteassistant_last_url');
delete_option('aisiteassistant_task_id');
delete_site_option('aisiteassistant_task_id');
delete_option('aisiteassistant_task_status');
delete_site_option('aisiteassistant_task_status');
delete_option('aisiteassistant_api_key');
delete_site_option('aisiteassistant_api_key');
delete_option('aisiteassistant_secret_key');
delete_site_option('aisiteassistant_secret_key');
delete_option('aisiteassistant_next_scheduled_time');
delete_site_option('aisiteassistant_next_scheduled_time');
delete_option('aisiteassistant_chat_placeholder');
delete_site_option('aisiteassistant_chat_placeholder');
delete_option('aisiteassistant_chat_send_label');
delete_site_option('aisiteassistant_chat_send_label');
delete_option('aisiteassistant_status');
delete_site_option('aisiteassistant_status');
delete_option('aisiteassistant_last_db');
delete_site_option('aisiteassistant_last_db');

// Clear Cron Jobs
wp_clear_scheduled_hook('AISiteAssistant_cron_event');

