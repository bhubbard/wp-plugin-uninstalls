<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bledro_allowed_blocks_edit');
delete_site_option('bledro_allowed_blocks_edit');
delete_option('bledro_allowed_blocks_add');
delete_site_option('bledro_allowed_blocks_add');
delete_option('bledro_custom_allowed_blocks');
delete_site_option('bledro_custom_allowed_blocks');
delete_option('bledro_disable_list_view');
delete_site_option('bledro_disable_list_view');
delete_option('bledro_disabled_roles');
delete_site_option('bledro_disabled_roles');
delete_option('bledro_disable_block_insertion');
delete_site_option('bledro_disable_block_insertion');
delete_option('bledro_allowed_pattern_categories');
delete_site_option('bledro_allowed_pattern_categories');
delete_option('bledro_allow_pattern_insertion');
delete_site_option('bledro_allow_pattern_insertion');
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

