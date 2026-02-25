<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('recently_activated');
delete_site_option('recently_activated');
delete_option('corsi_facebook');
delete_site_option('corsi_facebook');
delete_option('corsi_youtube');
delete_site_option('corsi_youtube');
delete_option('corsi_twitter');
delete_site_option('corsi_twitter');
delete_option('corsi_agoogleplus');
delete_site_option('corsi_agoogleplus');
delete_option('corsi_smtphost');
delete_site_option('corsi_smtphost');
delete_option('corsi_smtpuser');
delete_site_option('corsi_smtpuser');
delete_option('corsi_smtppassword');
delete_site_option('corsi_smtppassword');
delete_option('corsi_googleplus');
delete_site_option('corsi_googleplus');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tgmpa_dismissed_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tgmpa_dismissed_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tgmpa_dismissed_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tgmpa_dismissed_notice' ) );

