<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('reality_shop_delete_data');
delete_site_option('reality_shop_delete_data');
delete_option('reality_shop_open_in_modal');
delete_site_option('reality_shop_open_in_modal');
delete_option('reality_shop_remove_comments_and_empty_lines');
delete_site_option('reality_shop_remove_comments_and_empty_lines');
delete_option('reality_shop_lazy_load');
delete_site_option('reality_shop_lazy_load');
delete_option('reality_shop_files');
delete_site_option('reality_shop_files');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_reality_shop_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_reality_shop_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_reality_shop_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_reality_shop_shortcode' ) );

