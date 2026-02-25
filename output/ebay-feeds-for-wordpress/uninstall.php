<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ebay-feeds-hide-results-from-search-engines');
delete_site_option('ebay-feeds-hide-results-from-search-engines');
delete_option('ebay-feeds-for-wordpress-default');
delete_site_option('ebay-feeds-for-wordpress-default');
delete_option('ebay-feeds-for-wordpress-default-number');
delete_site_option('ebay-feeds-for-wordpress-default-number');
delete_option('ebay-feeds-for-wordpress-link');
delete_site_option('ebay-feeds-for-wordpress-link');
delete_option('ebay-feeds-for-wordpress-link-open-blank');
delete_site_option('ebay-feeds-for-wordpress-link-open-blank');
delete_option('ebay-feed-for-wordpress-flush-cache');
delete_site_option('ebay-feed-for-wordpress-flush-cache');
delete_option('ebay-feeds-for-wordpress-nofollow-links');
delete_site_option('ebay-feeds-for-wordpress-nofollow-links');
delete_option('ebay-feeds-for-wordpress-debug');
delete_site_option('ebay-feeds-for-wordpress-debug');
delete_option('ebay-feeds-for-wordpress-item-div-wrapper');
delete_site_option('ebay-feeds-for-wordpress-item-div-wrapper');
delete_option('ebay-feeds-for-wordpress-disable-header');
delete_site_option('ebay-feeds-for-wordpress-disable-header');
delete_option('ebay-feed-for-wordpress-ssl');
delete_site_option('ebay-feed-for-wordpress-ssl');
delete_option('ebay_feeds_for_wordpress_fallback');
delete_site_option('ebay_feeds_for_wordpress_fallback');
delete_option('ebay-feeds-for-wordpress-default-header');
delete_site_option('ebay-feeds-for-wordpress-default-header');
delete_option('ebay-feeds-for-wordpress-imax-max-width');
delete_site_option('ebay-feeds-for-wordpress-imax-max-width');
delete_option('ebay-feed-for-wordpress-force-feed');
delete_site_option('ebay-feed-for-wordpress-force-feed');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ewpf_ignore_ar_warning' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ewpf_ignore_ar_warning' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ewpf_ignore_ar_warning' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ewpf_ignore_ar_warning' ) );

