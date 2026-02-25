<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vigia_aiss_tip_dismissed');
delete_site_option('vigia_aiss_tip_dismissed');
delete_option('vigia_db_version');
delete_site_option('vigia_db_version');
delete_option('vigia_flush_rewrite');
delete_site_option('vigia_flush_rewrite');
delete_option('vigia_activation_notice');
delete_site_option('vigia_activation_notice');
delete_option('vigia_blocked_crawlers');
delete_site_option('vigia_blocked_crawlers');
delete_option('vigia_robots_rules');
delete_site_option('vigia_robots_rules');
delete_option('vigia_email_settings');
delete_site_option('vigia_email_settings');
delete_option('vigia_llms_settings');
delete_site_option('vigia_llms_settings');
delete_option('vigia_settings');
delete_site_option('vigia_settings');
delete_option('vigia_custom_crawlers');
delete_site_option('vigia_custom_crawlers');
delete_option('vigia_blocked_items');
delete_site_option('vigia_blocked_items');
delete_option('vigia_markdown_settings');
delete_site_option('vigia_markdown_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('vigia_send_email_alerts');
wp_clear_scheduled_hook('vigia_daily_cleanup');
wp_clear_scheduled_hook('vigia_llms_regenerate');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_meta-robots-noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_meta-robots-noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_meta-robots-noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_meta-robots-noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_robots' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_robots' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_robots' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_robots' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aioseo_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aioseo_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aioseo_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aioseo_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seopress_robots_index' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seopress_robots_index' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seopress_robots_index' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seopress_robots_index' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_genesis_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_genesis_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_genesis_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_genesis_noindex' ) );

