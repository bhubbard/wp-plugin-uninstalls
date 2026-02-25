<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seo_title_code');
delete_site_option('seo_title_code');
delete_option('seo_desc_code');
delete_site_option('seo_desc_code');
delete_option('seo_robot_home_code');
delete_site_option('seo_robot_home_code');
delete_option('seo_meta_author');
delete_site_option('seo_meta_author');
delete_option('seo_meta_contact');
delete_site_option('seo_meta_contact');
delete_option('seo_meta_copyright');
delete_site_option('seo_meta_copyright');
delete_option('seo_geo_region');
delete_site_option('seo_geo_region');
delete_option('seo_geo_placename');
delete_site_option('seo_geo_placename');
delete_option('seo_geo_position');
delete_site_option('seo_geo_position');
delete_option('seo_ICBM');
delete_site_option('seo_ICBM');
delete_option('seo_app_id');
delete_site_option('seo_app_id');
delete_option('seo_admins');
delete_site_option('seo_admins');
delete_option('display_og_url');
delete_site_option('display_og_url');
delete_option('display_og_site_name');
delete_site_option('display_og_site_name');
delete_option('display_og_description');
delete_site_option('display_og_description');
delete_option('display_og_type');
delete_site_option('display_og_type');
delete_option('display_og_image');
delete_site_option('display_og_image');
delete_option('upload_image');
delete_site_option('upload_image');
delete_option('display_og_url_post');
delete_site_option('display_og_url_post');
delete_option('display_og_title');
delete_site_option('display_og_title');
delete_option('display_og_description_post');
delete_site_option('display_og_description_post');
delete_option('display_og_type_post');
delete_site_option('display_og_type_post');
delete_option('display_og_image_post');
delete_site_option('display_og_image_post');
delete_option('seo_key_code');
delete_site_option('seo_key_code');
delete_option('seo_key_news_keywords');
delete_site_option('seo_key_news_keywords');
delete_option('seo_tracking_code');
delete_site_option('seo_tracking_code');
delete_option('seo_index_archives');
delete_site_option('seo_index_archives');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'tag_meta_key_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('csmt_options');
delete_site_option('csmt_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cat_meta_key_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option(' display_og_title');
delete_site_option(' display_og_title');
delete_option(' display_og_image_post');
delete_site_option(' display_og_image_post');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'seo_desc_post_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'seo_desc_post_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'seo_desc_post_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'seo_desc_post_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'seo_title_sp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'seo_title_sp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'seo_title_sp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'seo_title_sp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'seo_keys_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'seo_keys_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'seo_keys_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'seo_keys_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'seo_url_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'seo_url_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'seo_url_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'seo_url_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'seo_news_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'seo_news_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'seo_news_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'seo_news_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'seo_post_robots' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'seo_post_robots' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'seo_post_robots' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'seo_post_robots' ) );

