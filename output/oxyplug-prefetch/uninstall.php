<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oxy_prefetch_version');
delete_site_option('oxy_prefetch_version');
delete_option('oxy_prefetches_number_status');
delete_site_option('oxy_prefetches_number_status');
delete_option('oxy_prefetches_number');
delete_site_option('oxy_prefetches_number');
delete_option('oxy_prefetch_hover_status');
delete_site_option('oxy_prefetch_hover_status');
delete_option('oxy_prefetch_prerender_number_status');
delete_site_option('oxy_prefetch_prerender_number_status');
delete_option('oxy_prefetch_prerender_number');
delete_site_option('oxy_prefetch_prerender_number');
delete_option('oxy_prefetch_prerender_hover_status');
delete_site_option('oxy_prefetch_prerender_hover_status');
delete_option('oxy_prefetch_prerender_href_exclusion_status');
delete_site_option('oxy_prefetch_prerender_href_exclusion_status');
delete_option('oxy_prefetch_prerender_match');
delete_site_option('oxy_prefetch_prerender_match');
delete_option('oxy_prefetch_prerender_notice_dismissed');
delete_site_option('oxy_prefetch_prerender_notice_dismissed');

// Delete Transients
delete_transient('oxy_prefetch_errors');
delete_site_transient('oxy_prefetch_errors');
delete_transient('oxy_prefetch_success_messages');
delete_site_transient('oxy_prefetch_success_messages');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_oxy_prefetch_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_oxy_prefetch_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_oxy_prefetch_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_oxy_prefetch_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_oxy_prefetch_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_oxy_prefetch_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_oxy_prefetch_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_oxy_prefetch_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_oxy_prefetch_prerender_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_oxy_prefetch_prerender_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_oxy_prefetch_prerender_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_oxy_prefetch_prerender_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_oxy_prefetch_prerender_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_oxy_prefetch_prerender_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_oxy_prefetch_prerender_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_oxy_prefetch_prerender_url' ) );

