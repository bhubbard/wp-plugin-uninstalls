<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('citrus_data_source');
delete_site_option('citrus_data_source');
delete_option('citrus_api_key');
delete_site_option('citrus_api_key');
delete_option('citrus_base_url');
delete_site_option('citrus_base_url');
delete_option('citrus_org_id');
delete_site_option('citrus_org_id');
delete_option('citrus_publication_url');
delete_site_option('citrus_publication_url');
delete_option('citrus_sync_interval');
delete_site_option('citrus_sync_interval');
delete_option('citrus_cache_duration');
delete_site_option('citrus_cache_duration');
delete_option('citrus_auto_sync');
delete_site_option('citrus_auto_sync');
delete_option('citrus_last_sync');
delete_site_option('citrus_last_sync');
delete_option('citrus_openai_api_key');
delete_site_option('citrus_openai_api_key');
delete_option('citrus_openai_api_endpoint');
delete_site_option('citrus_openai_api_endpoint');
delete_option('citrus_ai_enabled');
delete_site_option('citrus_ai_enabled');
delete_option('citrus_ai_model');
delete_site_option('citrus_ai_model');
delete_option('citrus_custom_css');
delete_site_option('citrus_custom_css');
delete_option('citrus_color_scheme');
delete_site_option('citrus_color_scheme');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'citrus_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('citrus_bibtex_file_path');
delete_site_option('citrus_bibtex_file_path');

// Clear Cron Jobs
wp_clear_scheduled_hook('citrus_sync_event');

