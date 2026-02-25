<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('algolia_autocomplete_enabled');
delete_site_option('algolia_autocomplete_enabled');
delete_option('algolia_autocomplete_debounce');
delete_site_option('algolia_autocomplete_debounce');
delete_option('algolia_autocomplete_config');
delete_site_option('algolia_autocomplete_config');
delete_option('algolia_override_native_search');
delete_site_option('algolia_override_native_search');
delete_option('algolia_instantsearch_template_version');
delete_site_option('algolia_instantsearch_template_version');
delete_option('algolia_application_id');
delete_site_option('algolia_application_id');
delete_option('algolia_search_api_key');
delete_site_option('algolia_search_api_key');
delete_option('algolia_api_key');
delete_site_option('algolia_api_key');
delete_option('algolia_index_name_prefix');
delete_site_option('algolia_index_name_prefix');
delete_option('algolia_powered_by_enabled');
delete_site_option('algolia_powered_by_enabled');
delete_option('algolia_insights_enabled');
delete_site_option('algolia_insights_enabled');
delete_option('algolia_synced_indices_ids');
delete_site_option('algolia_synced_indices_ids');
delete_option('algolia_api_is_reachable');
delete_site_option('algolia_api_is_reachable');
delete_option('algolia_pmxi_page');
delete_site_option('algolia_pmxi_page');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wp_algolia_child_posts_%', '_site_transient_wp_algolia_child_posts_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_records_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_records_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_records_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_records_count' ) );

