<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('genesis_blocks_has_content_to_migrate');
delete_site_option('genesis_blocks_has_content_to_migrate');
delete_option('atomic_blocks_mailchimp_api_key');
delete_site_option('atomic_blocks_mailchimp_api_key');
delete_option('genesis_page_builder_block_settings_permissions');
delete_site_option('genesis_page_builder_block_settings_permissions');
delete_option('genesis_blocks_pro_migrated_from_genesis_blocks_pro');
delete_site_option('genesis_blocks_pro_migrated_from_genesis_blocks_pro');
delete_option('genesis_blocks_migrated_from_atomic_blocks');
delete_site_option('genesis_blocks_migrated_from_atomic_blocks');
delete_option('genesis_blocks_mailchimp_api_key');
delete_site_option('genesis_blocks_mailchimp_api_key');

// Delete Transients
delete_transient('genesis_blocks_mailchimp_lists');
delete_site_transient('genesis_blocks_mailchimp_lists');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'genesis_blocks_favorite_layouts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'genesis_blocks_favorite_layouts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'genesis_blocks_favorite_layouts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'genesis_blocks_favorite_layouts' ) );

