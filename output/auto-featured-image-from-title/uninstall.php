<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('auto_image_pages');
delete_site_option('auto_image_pages');
delete_option('auto_image_posts');
delete_site_option('auto_image_posts');
delete_option('auto_image_content_length');
delete_site_option('auto_image_content_length');
delete_option('auto_image_remove_linebreaks');
delete_site_option('auto_image_remove_linebreaks');
delete_option('auto_image_default_disable');
delete_site_option('auto_image_default_disable');
delete_option('auto_image_write_text');
delete_site_option('auto_image_write_text');
delete_option('auto_image_text');
delete_site_option('auto_image_text');
delete_option('auto_image_width');
delete_site_option('auto_image_width');
delete_option('auto_image_height');
delete_site_option('auto_image_height');
delete_option('auto_image_bg_image');
delete_site_option('auto_image_bg_image');
delete_option('auto_image_bg_color');
delete_site_option('auto_image_bg_color');
delete_option('auto_image_fontface');
delete_site_option('auto_image_fontface');
delete_option('auto_image_fontsize');
delete_site_option('auto_image_fontsize');
delete_option('auto_image_text_color');
delete_site_option('auto_image_text_color');
delete_option('auto_image_shadow');
delete_site_option('auto_image_shadow');
delete_option('auto_image_shadow_color');
delete_site_option('auto_image_shadow_color');
delete_option('auto_image_set_first');
delete_site_option('auto_image_set_first');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'afift-disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'afift-disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'afift-disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'afift-disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'afift-disable-set-first' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'afift-disable-set-first' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'afift-disable-set-first' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'afift-disable-set-first' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'afift_lite2pro_ignore_notice4' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'afift_lite2pro_ignore_notice4' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'afift_lite2pro_ignore_notice4' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'afift_lite2pro_ignore_notice4' ) );

