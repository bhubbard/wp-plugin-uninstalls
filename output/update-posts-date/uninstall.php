<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('updp_last_update');
delete_site_option('updp_last_update');
delete_option('updp_interval');
delete_site_option('updp_interval');
delete_option('updp_interval_slop');
delete_site_option('updp_interval_slop');
delete_option('updp_age_limit');
delete_site_option('updp_age_limit');
delete_option('updp_omit_cats');
delete_site_option('updp_omit_cats');
delete_option('updp_show_original_pubdate');
delete_site_option('updp_show_original_pubdate');
delete_option('updp_pos');
delete_site_option('updp_pos');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'updp_original_pub_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'updp_original_pub_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'updp_original_pub_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'updp_original_pub_date' ) );

