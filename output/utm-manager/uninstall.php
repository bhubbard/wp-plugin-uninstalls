<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('utmm_utm_id');
delete_site_option('utmm_utm_id');
delete_option('utmm_utm_source');
delete_site_option('utmm_utm_source');
delete_option('utmm_utm_medium');
delete_site_option('utmm_utm_medium');
delete_option('utmm_utm_campaign');
delete_site_option('utmm_utm_campaign');
delete_option('utmm_utm_term');
delete_site_option('utmm_utm_term');
delete_option('utmm_utm_content');
delete_site_option('utmm_utm_content');
delete_option('utmm_version');
delete_site_option('utmm_version');
delete_option('utmm_data_migrated');
delete_site_option('utmm_data_migrated');
delete_option('utmm_installed');
delete_site_option('utmm_installed');
delete_option('utmm_migration_page');
delete_site_option('utmm_migration_page');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'utmm_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('utmm_flash_notices');
delete_site_option('utmm_flash_notices');

// Clear Cron Jobs
wp_clear_scheduled_hook('utmm_migrate_data');

