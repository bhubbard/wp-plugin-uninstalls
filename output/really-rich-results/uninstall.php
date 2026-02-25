<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('really_rich_results_global');
delete_site_option('really_rich_results_global');
delete_option('really_rich_results_org_name');
delete_site_option('really_rich_results_org_name');
delete_option('really_rich_results_org_url');
delete_site_option('really_rich_results_org_url');
delete_option('really_rich_results_org_duns');
delete_site_option('really_rich_results_org_duns');
delete_option('really_rich_results_org_address');
delete_site_option('really_rich_results_org_address');
delete_option('really_rich_results_org_same_as');
delete_site_option('really_rich_results_org_same_as');
delete_option('really_rich_results_org_legal_name');
delete_site_option('really_rich_results_org_legal_name');
delete_option('really_rich_results_org_logo');
delete_site_option('really_rich_results_org_logo');
delete_option('really_rich_results_org_country');
delete_site_option('really_rich_results_org_country');
delete_option('really_rich_results_org_locality');
delete_site_option('really_rich_results_org_locality');
delete_option('really_rich_results_org_region');
delete_site_option('really_rich_results_org_region');
delete_option('really_rich_results_org_po_box');
delete_site_option('really_rich_results_org_po_box');
delete_option('really_rich_results_org_postal_code');
delete_site_option('really_rich_results_org_postal_code');
delete_option('really_rich_results_org_street');
delete_site_option('really_rich_results_org_street');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'really_rich_results_post_type_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'really_rich_results_schema_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'really_rich_results_schema_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'really_rich_results_schema_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'really_rich_results_schema_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'really_rich_results_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'really_rich_results_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'really_rich_results_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'really_rich_results_product' ) );

