<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('librafire_pinpoints_deferred_admin_notices');
delete_site_option('librafire_pinpoints_deferred_admin_notices');
delete_option('librafire_pinpoints_version');
delete_site_option('librafire_pinpoints_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('lf_caption_text_color');
delete_site_option('lf_caption_text_color');
delete_option('lf_default_dot_size');
delete_site_option('lf_default_dot_size');
delete_option('lf_caption_text_font_size');
delete_site_option('lf_caption_text_font_size');
delete_option('lf_default_dot_caption_opacity');
delete_site_option('lf_default_dot_caption_opacity');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'lf_post_dots_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'lf_post_dots_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'lf_post_dots_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'lf_post_dots_%' ) );

