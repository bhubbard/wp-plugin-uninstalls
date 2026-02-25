<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('phoe_s_search_inp_label');
delete_site_option('phoe_s_search_inp_label');
delete_option('phoe_s_search_sub_label');
delete_site_option('phoe_s_search_sub_label');
delete_option('phoe_s_min_num_of_char');
delete_site_option('phoe_s_min_num_of_char');
delete_option('phoe_s_max_num_of_result');
delete_site_option('phoe_s_max_num_of_result');
delete_option('phoe_s_loader_image');
delete_site_option('phoe_s_loader_image');
delete_option('phoe_s_search_field_placeholder');
delete_site_option('phoe_s_search_field_placeholder');
delete_option('recently_activated');
delete_site_option('recently_activated');
delete_option('max_num_of_result');
delete_site_option('max_num_of_result');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'product_search_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'product_search_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'product_search_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'product_search_ignore_notice' ) );

