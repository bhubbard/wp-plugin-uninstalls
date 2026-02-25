<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qHomepage');
delete_site_option('qHomepage');
delete_option('qPosts');
delete_site_option('qPosts');
delete_option('qPages');
delete_site_option('qPages');
delete_option('qTags');
delete_site_option('qTags');
delete_option('qzip');
delete_site_option('qzip');
delete_option('qgoogle');
delete_site_option('qgoogle');
delete_option('qask');
delete_site_option('qask');
delete_option('qbing');
delete_site_option('qbing');
delete_option('qyandex');
delete_site_option('qyandex');
delete_option('sws_images_alt');
delete_site_option('sws_images_alt');
delete_option('sws_images_title');
delete_site_option('sws_images_title');
delete_option('sws_images_override');
delete_site_option('sws_images_override');
delete_option('sws_images_override_title');
delete_site_option('sws_images_override_title');
delete_option('sws_images_notice');
delete_site_option('sws_images_notice');
delete_option('qCategories');
delete_site_option('qCategories');
delete_option('qArchives');
delete_site_option('qArchives');
delete_option('qAuthor');
delete_site_option('qAuthor');
delete_option('smt_google_publisher_page');
delete_site_option('smt_google_publisher_page');
delete_option('smt_google_varification');
delete_site_option('smt_google_varification');
delete_option('smt_bing_webmaster');
delete_site_option('smt_bing_webmaster');
delete_option('smt_alexa_varification');
delete_site_option('smt_alexa_varification');
delete_option('smt_yandex_webmaster');
delete_site_option('smt_yandex_webmaster');
delete_option('smt_pinterest_webmaster');
delete_site_option('smt_pinterest_webmaster');
delete_option('smt_facebookpage_url');
delete_site_option('smt_facebookpage_url');
delete_option('smt_twitter_username');
delete_site_option('smt_twitter_username');

// Clear Cron Jobs
wp_clear_scheduled_hook('stm_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sws_post_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sws_post_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sws_post_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sws_post_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sws_post_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sws_post_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sws_post_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sws_post_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sws_post_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sws_post_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sws_post_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sws_post_keywords' ) );

