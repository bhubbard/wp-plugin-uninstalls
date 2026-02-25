<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsppro_ga_profile');
delete_site_option('wpsppro_ga_profile');
delete_option('wprtsp_upgrade_required');
delete_site_option('wprtsp_upgrade_required');
delete_option('wprtsp_firstrun');
delete_site_option('wprtsp_firstrun');
delete_option('wprtsp');
delete_site_option('wprtsp');

// Delete Transients
delete_transient('wpsppro_ga_rtusers');
delete_site_transient('wpsppro_ga_rtusers');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_socialproof' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_socialproof' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_socialproof' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_socialproof' ) );

