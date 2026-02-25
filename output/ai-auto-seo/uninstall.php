<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ws4agpt_manager');
delete_site_option('ws4agpt_manager');
delete_option('ws4agpt_settings');
delete_site_option('ws4agpt_settings');
delete_option('ws4agpt_aeS25_wsfa_wsfa');
delete_site_option('ws4agpt_aeS25_wsfa_wsfa');
delete_option('ws4agpt_auto_seo_pro_active');
delete_site_option('ws4agpt_auto_seo_pro_active');
delete_option('ws4agpt_promo_heading');
delete_site_option('ws4agpt_promo_heading');
delete_option('ws4agpt_promo_subtext');
delete_site_option('ws4agpt_promo_subtext');
delete_option('ws4agpt_promo_image');
delete_site_option('ws4agpt_promo_image');
delete_option('ws4agpt_promo_link');
delete_site_option('ws4agpt_promo_link');
delete_option('ws4agpt_version');
delete_site_option('ws4agpt_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('ws4agpt_auto_add_article_event');
wp_clear_scheduled_hook('ws4agpt_do_background_task');
wp_clear_scheduled_hook('ws4agpt_generate_post_data_task');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'article_length' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'article_length' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'article_length' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'article_length' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'density' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'density' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'density' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'density' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'is_wp_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'is_wp_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'is_wp_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'is_wp_post' ) );

