<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('damuro_comments');
delete_site_option('damuro_comments');
delete_option('damuro_default_background');
delete_site_option('damuro_default_background');
delete_option('damuro_stash_folder');
delete_site_option('damuro_stash_folder');
delete_option('damuro_sandbox_url');
delete_site_option('damuro_sandbox_url');
delete_option('damuro_default_width');
delete_site_option('damuro_default_width');
delete_option('damuro_default_height');
delete_site_option('damuro_default_height');
delete_option('damuro_default_canvas_width');
delete_site_option('damuro_default_canvas_width');
delete_option('damuro_default_canvas_height');
delete_site_option('damuro_default_canvas_height');
delete_option('damuro_comment_moderation');
delete_site_option('damuro_comment_moderation');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'deviantart_muro_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'deviantart_muro_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'deviantart_muro_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'deviantart_muro_image' ) );

