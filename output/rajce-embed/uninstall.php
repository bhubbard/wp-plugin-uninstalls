<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rajce_embed_image_captions');
delete_site_option('rajce_embed_image_captions');
delete_option('rajce_embed_gallery_captions');
delete_site_option('rajce_embed_gallery_captions');
delete_option('rajce_embed_thumbnail_size_w');
delete_site_option('rajce_embed_thumbnail_size_w');
delete_option('rajce_embed_thumbnail_size_h');
delete_site_option('rajce_embed_thumbnail_size_h');
delete_option('rajce_embed_thumbnail_crop');
delete_site_option('rajce_embed_thumbnail_crop');
delete_option('rajce_embed_omit_album_cover');
delete_site_option('rajce_embed_omit_album_cover');
delete_option('rajce_embed_thumbnail_source');
delete_site_option('rajce_embed_thumbnail_source');
delete_option('rajce_embed_version');
delete_site_option('rajce_embed_version');
delete_option('rajce_embed_thumb_default');
delete_site_option('rajce_embed_thumb_default');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'rajce_embed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('rajce_embed_compatib_wp_rajce_version');
delete_site_option('rajce_embed_compatib_wp_rajce_version');

