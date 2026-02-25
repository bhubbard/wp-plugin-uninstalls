<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gcbt_yazdir_icon');
delete_site_option('gcbt_yazdir_icon');
delete_option('gcbt_indir_icon');
delete_site_option('gcbt_indir_icon');
delete_option('gcbt_yazdir_icon_color');
delete_site_option('gcbt_yazdir_icon_color');
delete_option('gcbt_indir_icon_color');
delete_site_option('gcbt_indir_icon_color');
delete_option('gcbt_yazdir_text_color');
delete_site_option('gcbt_yazdir_text_color');
delete_option('gcbt_indir_text_color');
delete_site_option('gcbt_indir_text_color');
delete_option('gcbt_yazdir_bg_color');
delete_site_option('gcbt_yazdir_bg_color');
delete_option('gcbt_indir_bg_color');
delete_site_option('gcbt_indir_bg_color');
delete_option('gcbt_show_yazdir');
delete_site_option('gcbt_show_yazdir');
delete_option('gcbt_show_indir');
delete_site_option('gcbt_show_indir');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

