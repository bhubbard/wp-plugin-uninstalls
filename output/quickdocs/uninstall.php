<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quickdocs_flush_rewrite_rules');
delete_site_option('quickdocs_flush_rewrite_rules');
delete_option('qds_home_title');
delete_site_option('qds_home_title');
delete_option('qds_home_content');
delete_site_option('qds_home_content');
delete_option('qds_font_family');
delete_site_option('qds_font_family');
delete_option('qds_background_image');
delete_site_option('qds_background_image');
delete_option('qds_accent_colour');
delete_site_option('qds_accent_colour');
delete_option('qds_home_show_topics');
delete_site_option('qds_home_show_topics');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'quickdocs_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'quickdocs_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'quickdocs_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'quickdocs_state' ) );

