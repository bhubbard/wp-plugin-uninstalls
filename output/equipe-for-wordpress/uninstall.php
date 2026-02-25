<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('equipe_last_fetch_date');
delete_site_option('equipe_last_fetch_date');
delete_option('equipe_club_id');
delete_site_option('equipe_club_id');
delete_option('equipe_rider_licences');
delete_site_option('equipe_rider_licences');
delete_option('equipe_cat_show_jumping');
delete_site_option('equipe_cat_show_jumping');
delete_option('equipe_cat_dressage');
delete_site_option('equipe_cat_dressage');
delete_option('equipe_cat_eventing');
delete_site_option('equipe_cat_eventing');
delete_option('equipe_cat_endurance');
delete_site_option('equipe_cat_endurance');
delete_option('equipe_cat_breed_eval');
delete_site_option('equipe_cat_breed_eval');
delete_option('equipe_cat_multi');
delete_site_option('equipe_cat_multi');
delete_option('equipe_cat_default');
delete_site_option('equipe_cat_default');
delete_option('equipe_version');
delete_site_option('equipe_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('equipe-fetch-from-api');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'equipe_after_install_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'equipe_after_install_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'equipe_after_install_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'equipe_after_install_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'equipe_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'equipe_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'equipe_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'equipe_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'equipe_start_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'equipe_start_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'equipe_start_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'equipe_start_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'equipe_end_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'equipe_end_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'equipe_end_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'equipe_end_date' ) );

