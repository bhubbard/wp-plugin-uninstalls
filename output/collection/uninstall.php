<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slwsu_is_active_grouper');
delete_site_option('slwsu_is_active_grouper');
delete_option('slwsu_collection_grouper');
delete_site_option('slwsu_collection_grouper');
delete_option('slwsu_collection_delete_options');
delete_site_option('slwsu_collection_delete_options');
delete_option('slwsu_collection_metaboxs');
delete_site_option('slwsu_collection_metaboxs');
delete_option('slwsu_collection_plugin_name');
delete_site_option('slwsu_collection_plugin_name');
delete_option('slwsu_collection_post_types');
delete_site_option('slwsu_collection_post_types');
delete_option('slwsu_collection_add_body_class');
delete_site_option('slwsu_collection_add_body_class');
delete_option('slwsu_collection_inline_styles');
delete_site_option('slwsu_collection_inline_styles');
delete_option('slwsu_collection_capability_type');
delete_site_option('slwsu_collection_capability_type');
delete_option('slwsu_collection_post_type_supports');
delete_site_option('slwsu_collection_post_type_supports');
delete_option('slwsu_collection_post_type_deregister');
delete_site_option('slwsu_collection_post_type_deregister');
delete_option('slwsu_collection_flush_rewrite');
delete_site_option('slwsu_collection_flush_rewrite');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'slwsu_collection_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('slwsu_collection_options');
delete_site_transient('slwsu_collection_options');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_%' ) );

