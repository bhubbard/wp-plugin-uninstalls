<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('longshot_ai_api_key');
delete_site_option('longshot_ai_api_key');
delete_option('longshot_ai_unique_id');
delete_site_option('longshot_ai_unique_id');
delete_option('longshot_ai_auth_id');
delete_site_option('longshot_ai_auth_id');
delete_option('longshot_ai_extension_allowed');
delete_site_option('longshot_ai_extension_allowed');
delete_option('longshot_ai_persistent_message');
delete_site_option('longshot_ai_persistent_message');
delete_option('longshot_ai_feedback_dismissed');
delete_site_option('longshot_ai_feedback_dismissed');
delete_option('longshot_ai_feedback_given');
delete_site_option('longshot_ai_feedback_given');
delete_option('longshot_ai_feedback_message');
delete_site_option('longshot_ai_feedback_message');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'longshot_ai_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('longshot_ai_author_id');
delete_site_option('longshot_ai_author_id');

// Delete Transients
delete_transient('longshot_ai_login_message');
delete_site_transient('longshot_ai_login_message');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'longshot_ai_post_topic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'longshot_ai_post_topic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'longshot_ai_post_topic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'longshot_ai_post_topic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'longshot_ai_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'longshot_ai_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'longshot_ai_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'longshot_ai_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'longshot_ai_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'longshot_ai_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'longshot_ai_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'longshot_ai_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'longshot_ai_semantic_seo_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'longshot_ai_semantic_seo_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'longshot_ai_semantic_seo_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'longshot_ai_semantic_seo_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'longshot_ai_meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'longshot_ai_meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'longshot_ai_meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'longshot_ai_meta_description' ) );

