<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('OPH_interval');
delete_site_option('OPH_interval');
delete_option('OPH_interval_aleatoire');
delete_site_option('OPH_interval_aleatoire');
delete_option('OPH_age_limit');
delete_site_option('OPH_age_limit');
delete_option('OPH_show_original_pubdate');
delete_site_option('OPH_show_original_pubdate');
delete_option('OPH_give_credit');
delete_site_option('OPH_give_credit');
delete_option('OPH_pos');
delete_site_option('OPH_pos');
delete_option('OPH_at_top');
delete_site_option('OPH_at_top');
delete_option('OPH_omit_cats');
delete_site_option('OPH_omit_cats');
delete_option('OPH_FORCED_POSTS');
delete_site_option('OPH_FORCED_POSTS');
delete_option('OPH_last_update');
delete_site_option('OPH_last_update');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'OPH_original_pub_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'OPH_original_pub_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'OPH_original_pub_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'OPH_original_pub_date' ) );

