<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rop_last_update');
delete_site_option('rop_last_update');
delete_option('rop_interval');
delete_site_option('rop_interval');
delete_option('rop_interval_slop');
delete_site_option('rop_interval_slop');
delete_option('rop_age_limit');
delete_site_option('rop_age_limit');
delete_option('rop_omit_cats');
delete_site_option('rop_omit_cats');
delete_option('rop_show_original_pubdate');
delete_site_option('rop_show_original_pubdate');
delete_option('rop_pos');
delete_site_option('rop_pos');
delete_option('rop_at_top');
delete_site_option('rop_at_top');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rop_original_pub_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rop_original_pub_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rop_original_pub_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rop_original_pub_date' ) );

