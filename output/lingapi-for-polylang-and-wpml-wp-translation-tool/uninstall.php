<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tt_api_key');
delete_site_option('tt_api_key');
delete_option('tt_default_post_status');
delete_site_option('tt_default_post_status');
delete_option('turbotranslations_categories_cache');
delete_site_option('turbotranslations_categories_cache');
delete_option('turbotranslations_categories_cache_date');
delete_site_option('turbotranslations_categories_cache_date');
delete_option('turbotranslations_pairs_cache');
delete_site_option('turbotranslations_pairs_cache');
delete_option('turbotranslations_pairs_cache_date');
delete_site_option('turbotranslations_pairs_cache_date');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'turbotranslations_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'turbotranslations_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'turbotranslations_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'turbotranslations_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpml_post_translation_editor_native' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpml_post_translation_editor_native' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpml_post_translation_editor_native' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpml_post_translation_editor_native' ) );

