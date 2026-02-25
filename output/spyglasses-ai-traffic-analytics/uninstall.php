<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spyglasses_api_key');
delete_site_option('spyglasses_api_key');
delete_option('spyglasses_debug_mode');
delete_site_option('spyglasses_debug_mode');
delete_option('spyglasses_auto_sync_patterns');
delete_site_option('spyglasses_auto_sync_patterns');
delete_option('spyglasses_last_pattern_sync');
delete_site_option('spyglasses_last_pattern_sync');
delete_option('spyglasses_block_ai_model_trainers');
delete_site_option('spyglasses_block_ai_model_trainers');

// Delete Transients
delete_transient('spyglasses_agent_patterns');
delete_site_transient('spyglasses_agent_patterns');

// Clear Cron Jobs
wp_clear_scheduled_hook('spyglasses_update_patterns');

