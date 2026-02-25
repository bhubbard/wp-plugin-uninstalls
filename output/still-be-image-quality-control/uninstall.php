<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_sb-iqc-image-ids');
delete_site_option('_sb-iqc-image-ids');
delete_option('_sb-iqc-current-id');
delete_site_option('_sb-iqc-current-id');
delete_option('_sb-iqc-recomp-target-condition');
delete_site_option('_sb-iqc-recomp-target-condition');

// Clear Cron Jobs
wp_clear_scheduled_hook('stillbe_image_quality_control_arg_wpcron_run');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

