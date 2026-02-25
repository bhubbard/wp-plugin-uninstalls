<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('feedify_plugin_status');
delete_site_option('feedify_plugin_status');
delete_option('feedify_permalinks_flushed');
delete_site_option('feedify_permalinks_flushed');
delete_option('feedify_domain_key');
delete_site_option('feedify_domain_key');
delete_option('feedify_licence_key');
delete_site_option('feedify_licence_key');
delete_option('feedify_public_key');
delete_site_option('feedify_public_key');
delete_option('feedify_enable_ssl');
delete_site_option('feedify_enable_ssl');
delete_option('feedify_is_default_logo');
delete_site_option('feedify_is_default_logo');
delete_option('feedify_is_banner_image');
delete_site_option('feedify_is_banner_image');
delete_option('feedify_is_featured_logo');
delete_site_option('feedify_is_featured_logo');
delete_option('feedify_is_word_limit');
delete_site_option('feedify_is_word_limit');
delete_option('feedify_is_msg_send');
delete_site_option('feedify_is_msg_send');
delete_option('feedify_is_website_logo');
delete_site_option('feedify_is_website_logo');
delete_option('feedify_set_site_name_as_title_post_notification');
delete_site_option('feedify_set_site_name_as_title_post_notification');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_custom_title' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_custom_content' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('feedify_add_post_notification');
delete_site_option('feedify_add_post_notification');
delete_option('feedify_edit_post_notification');
delete_site_option('feedify_edit_post_notification');
delete_option('custom_image_url_type');
delete_site_option('custom_image_url_type');
delete_option('myprefix_image_id');
delete_site_option('myprefix_image_id');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'send_feedify_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'send_feedify_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'send_feedify_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'send_feedify_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'feedify_notification_already_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'feedify_notification_already_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'feedify_notification_already_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'feedify_notification_already_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'schedule_send_feedify_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'schedule_send_feedify_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'schedule_send_feedify_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'schedule_send_feedify_notification' ) );

