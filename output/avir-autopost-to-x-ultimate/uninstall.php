<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('avir_twitter_x_api_key');
delete_site_option('avir_twitter_x_api_key');
delete_option('avir_twitter_x_api_key_secret');
delete_site_option('avir_twitter_x_api_key_secret');
delete_option('avir_twitter_x_access_token');
delete_site_option('avir_twitter_x_access_token');
delete_option('avir_twitter_x_access_token_secret');
delete_site_option('avir_twitter_x_access_token_secret');
delete_option('avir_twitter_x_version');
delete_site_option('avir_twitter_x_version');
delete_option('avir_twitter_x_char_limit');
delete_site_option('avir_twitter_x_char_limit');
delete_option('avir_twitter_x_read_more_text');
delete_site_option('avir_twitter_x_read_more_text');
delete_option('avir_twitter_x_link_same_line');
delete_site_option('avir_twitter_x_link_same_line');
delete_option('avir_twitter_x_link_prefix');
delete_site_option('avir_twitter_x_link_prefix');
delete_option('avir_twitter_x_textarea_height');
delete_site_option('avir_twitter_x_textarea_height');
delete_option('avir_twitter_x_excerpt_mode');
delete_site_option('avir_twitter_x_excerpt_mode');
delete_option('avir_twitter_x_excerpt_length');
delete_site_option('avir_twitter_x_excerpt_length');
delete_option('avir_twitter_x_strip_headers');
delete_site_option('avir_twitter_x_strip_headers');
delete_option('avir_twitter_x_install_date');
delete_site_option('avir_twitter_x_install_date');
delete_option('avir_twitter_x_supported_post_types');
delete_site_option('avir_twitter_x_supported_post_types');
delete_option('avir_twitter_x_show_status_column');
delete_site_option('avir_twitter_x_show_status_column');

// Delete Transients
delete_transient('avir_twitter_x_settings_errors');
delete_site_transient('avir_twitter_x_settings_errors');
delete_transient('avir_twitter_x_settings_updated');
delete_site_transient('avir_twitter_x_settings_updated');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_avir_x_post_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_avir_x_post_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_avir_x_post_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_avir_x_post_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_avir_x_post_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_avir_x_post_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_avir_x_post_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_avir_x_post_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_avir_x_post_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_avir_x_post_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_avir_x_post_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_avir_x_post_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_avir_x_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_avir_x_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_avir_x_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_avir_x_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_avir_x_hashtags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_avir_x_hashtags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_avir_x_hashtags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_avir_x_hashtags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_avir_x_hashtag_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_avir_x_hashtag_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_avir_x_hashtag_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_avir_x_hashtag_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_avir_x_custom_excerpt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_avir_x_custom_excerpt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_avir_x_custom_excerpt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_avir_x_custom_excerpt' ) );

