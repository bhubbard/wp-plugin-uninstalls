<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('advanced_permalinks_cache');
delete_site_option('advanced_permalinks_cache');
delete_option('advanced_permalinks_settings');
delete_site_option('advanced_permalinks_settings');
delete_option('advanced_permalinks_posts');
delete_site_option('advanced_permalinks_posts');
delete_option('advanced_permalinks_migration');
delete_site_option('advanced_permalinks_migration');
delete_option('advanced_permalinks_categories');
delete_site_option('advanced_permalinks_categories');
delete_option('advanced_permalinks_migration_rule');
delete_site_option('advanced_permalinks_migration_rule');

