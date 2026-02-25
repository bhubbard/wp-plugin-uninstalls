<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fgd2wp_options');
delete_site_option('fgd2wp_options');
delete_option('fgd2wp_last_node_article_id');
delete_site_option('fgd2wp_last_node_article_id');
delete_option('fgd2wp_last_node_story_id');
delete_site_option('fgd2wp_last_node_story_id');
delete_option('fgd2wp_last_node_post_id');
delete_site_option('fgd2wp_last_node_post_id');
delete_option('fgd2wp_last_node_page_id');
delete_site_option('fgd2wp_last_node_page_id');
delete_option('fgd2wp_last_taxonomy_categories_id');
delete_site_option('fgd2wp_last_taxonomy_categories_id');
delete_option('fgd2wp_last_taxonomy_tags_id');
delete_site_option('fgd2wp_last_taxonomy_tags_id');
delete_option('fgd2wp_save_posts');
delete_site_option('fgd2wp_save_posts');
delete_option('fgd2wp_save_terms');
delete_site_option('fgd2wp_save_terms');
delete_option('fgd2wp_save_term_relationships');
delete_site_option('fgd2wp_save_term_relationships');
delete_option('fgd2wp_stop_import');
delete_site_option('fgd2wp_stop_import');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_children' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fgd2wp_ftp_options');
delete_site_option('fgd2wp_ftp_options');

// Delete Transients
delete_transient('wc_count_comments');
delete_site_transient('wc_count_comments');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fgd2wp_old_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fgd2wp_old_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fgd2wp_old_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fgd2wp_old_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

