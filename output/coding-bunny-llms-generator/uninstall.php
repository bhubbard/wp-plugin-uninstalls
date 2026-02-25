<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cbllms_options');
delete_site_option('cbllms_options');
delete_option('cbllms_generation_history');
delete_site_option('cbllms_generation_history');
delete_option('cbllms_logo_url');
delete_site_option('cbllms_logo_url');

// Delete Transients
delete_transient('cbllms_generating');
delete_site_transient('cbllms_generating');

// Clear Cron Jobs
wp_clear_scheduled_hook('cbllms_cron_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_canonical_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_canonical_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_canonical_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_canonical_url' ) );

