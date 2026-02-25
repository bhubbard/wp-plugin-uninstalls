<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('index_algolia_glob');
delete_site_option('index_algolia_glob');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'index_algolia_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('algolia_indexing_indices');
delete_site_option('algolia_indexing_indices');
delete_option('index_algolia_application_id');
delete_site_option('index_algolia_application_id');
delete_option('index_algolia_search_api_key');
delete_site_option('index_algolia_search_api_key');
delete_option('index_algolia_write_api_key');
delete_site_option('index_algolia_write_api_key');
delete_option('index_algolia_index_prefix');
delete_site_option('index_algolia_index_prefix');
delete_option('index_algolia_js_vars');
delete_site_option('index_algolia_js_vars');
delete_option('index_algolia_indices');
delete_site_option('index_algolia_indices');

