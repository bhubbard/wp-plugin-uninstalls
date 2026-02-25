<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('excelerate_ai_api_key');
delete_site_option('excelerate_ai_api_key');

// Delete Transients
delete_transient('excelerate_ai_gpt_content_update_lock');
delete_site_transient('excelerate_ai_gpt_content_update_lock');

// Clear Cron Jobs
wp_clear_scheduled_hook('gpt_content_update_event');

