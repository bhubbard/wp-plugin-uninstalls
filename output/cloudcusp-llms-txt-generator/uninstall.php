<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ccspllms_enabled');
delete_site_option('ccspllms_enabled');
delete_option('ccspllms_site_title');
delete_site_option('ccspllms_site_title');
delete_option('ccspllms_site_tagline');
delete_site_option('ccspllms_site_tagline');
delete_option('ccspllms_post_types');
delete_site_option('ccspllms_post_types');
delete_option('ccspllms_excerpt_priority');
delete_site_option('ccspllms_excerpt_priority');
delete_option('ccspllms_word_limit');
delete_site_option('ccspllms_word_limit');
delete_option('ccspllms_use_canonical');
delete_site_option('ccspllms_use_canonical');
delete_option('ccspllms_auto_regenerate');
delete_site_option('ccspllms_auto_regenerate');
delete_option('ccspllms_email_notifications');
delete_site_option('ccspllms_email_notifications');
delete_option('ccspllms_notification_email');
delete_site_option('ccspllms_notification_email');
delete_option('ccspllms_cron_frequency');
delete_site_option('ccspllms_cron_frequency');
delete_option('ccspllms_cron_time');
delete_site_option('ccspllms_cron_time');
delete_option('ccspllms_debug_logging');
delete_site_option('ccspllms_debug_logging');
delete_option('ccspllms_last_generated');
delete_site_option('ccspllms_last_generated');
delete_option('ccspllms_file_stats');
delete_site_option('ccspllms_file_stats');
delete_option('ccspllms_auto_regenerate_new');
delete_site_option('ccspllms_auto_regenerate_new');
delete_option('ccspllms_auto_regenerate_update');
delete_site_option('ccspllms_auto_regenerate_update');
delete_option('ccspllms_version');
delete_site_option('ccspllms_version');

// Delete Transients
delete_transient('ccspllms_cached_content');
delete_site_transient('ccspllms_cached_content');

// Clear Cron Jobs
wp_clear_scheduled_hook('ccspllms_generate_file');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ccspllms_custom_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ccspllms_custom_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ccspllms_custom_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ccspllms_custom_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ccspllms_excluded' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ccspllms_excluded' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ccspllms_excluded' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ccspllms_excluded' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aioseo_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aioseo_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aioseo_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aioseo_description' ) );

