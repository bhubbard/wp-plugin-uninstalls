<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_ep-facet-meta');
delete_site_option('widget_ep-facet-meta');
delete_option('widget_ep-facet-meta-range');
delete_site_option('widget_ep-facet-meta-range');
delete_option('woocommerce_hide_out_of_stock_items');
delete_site_option('woocommerce_hide_out_of_stock_items');
delete_option('elasticpress_weighting');
delete_site_option('elasticpress_weighting');
delete_option('elasticpress_synonyms_post_id');
delete_site_option('elasticpress_synonyms_post_id');
delete_option('ep_credentials');
delete_site_option('ep_credentials');
delete_option('ep_host');
delete_site_option('ep_host');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('ep_language');
delete_site_option('ep_language');

// Delete Transients
delete_transient('ep_es_info_response_code');
delete_site_transient('ep_es_info_response_code');
delete_transient('ep_es_info_response_error');
delete_site_transient('ep_es_info_response_error');
delete_transient('ep_cli_sync_progress');
delete_site_transient('ep_cli_sync_progress');
delete_transient('ep_wpcli_sync_interrupted');
delete_site_transient('ep_wpcli_sync_interrupted');
delete_transient('ep_sync_interrupted');
delete_site_transient('ep_sync_interrupted');
delete_transient('ep_es_info');
delete_site_transient('ep_es_info');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ep_related_posts_%', '_site_transient_ep_related_posts_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('ep_post_mapping_version');
delete_site_transient('ep_post_mapping_version');
delete_transient('ep_meta_field_keys');
delete_site_transient('ep_meta_field_keys');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ep_meta_field_keys_%', '_site_transient_ep_meta_field_keys_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('ep_autosuggest_query_request_cache');
delete_site_transient('ep_autosuggest_query_request_cache');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ep_exclude_from_search' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ep_exclude_from_search' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ep_exclude_from_search' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ep_exclude_from_search' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'search_term' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'search_term' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'search_term' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'search_term' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ep_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ep_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ep_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ep_token' ) );

