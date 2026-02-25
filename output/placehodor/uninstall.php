<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lnjph_install');
delete_site_option('lnjph_install');
delete_option('lnjph_install_date');
delete_site_option('lnjph_install_date');
delete_option('lnjph_uninstall_date');
delete_site_option('lnjph_uninstall_date');
delete_option('lnjph_plugin_version');
delete_site_option('lnjph_plugin_version');
delete_option('lnjph_default_post_thumbnail');
delete_site_option('lnjph_default_post_thumbnail');
delete_option('lnjph_settings_update');
delete_site_option('lnjph_settings_update');
delete_option('lnjph_sub_mode');
delete_site_option('lnjph_sub_mode');
delete_option('lnjph_custom_content_solo');
delete_site_option('lnjph_custom_content_solo');
delete_option('placehold_co_font');
delete_site_option('placehold_co_font');
delete_option('placehold_co_text');
delete_site_option('placehold_co_text');
delete_option('placehold_co_color');
delete_site_option('placehold_co_color');
delete_option('placehold_co_bgcolor');
delete_site_option('placehold_co_bgcolor');
delete_option('placeimg_com_mode');
delete_site_option('placeimg_com_mode');
delete_option('placeimg_com_cat');
delete_site_option('placeimg_com_cat');
delete_option('picsum_photos_mode');
delete_site_option('picsum_photos_mode');
delete_option('doodleipsum_mode');
delete_site_option('doodleipsum_mode');
delete_option('doodleipsum_bgcolor');
delete_site_option('doodleipsum_bgcolor');
delete_option('lnjph_sub_thumbnail');
delete_site_option('lnjph_sub_thumbnail');
delete_option('placehodor_sub_id');
delete_site_option('placehodor_sub_id');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );

