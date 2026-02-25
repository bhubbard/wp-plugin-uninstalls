<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elementor_viewport_lg');
delete_site_option('elementor_viewport_lg');
delete_option('elementor_viewport_md');
delete_site_option('elementor_viewport_md');
delete_option('pp_override_ms');
delete_site_option('pp_override_ms');
delete_option('pp_elementor_modules');
delete_site_option('pp_elementor_modules');
delete_option('pp_elementor_extensions');
delete_site_option('pp_elementor_extensions');
delete_option('pp_license_status');
delete_site_option('pp_license_status');
delete_option('pp_review_later_date');
delete_site_option('pp_review_later_date');
delete_option('pp_review_already_did');
delete_site_option('pp_review_already_did');
delete_option('pp_do_not_upgrade_to_pro');
delete_site_option('pp_do_not_upgrade_to_pro');
delete_option('pp_install_date');
delete_site_option('pp_install_date');
delete_option('pp_tracking_last_send');
delete_site_option('pp_tracking_last_send');
delete_option('pp_tracking_notice');
delete_site_option('pp_tracking_notice');
delete_option('pp_elementor_used_modules');
delete_site_option('pp_elementor_used_modules');
delete_option('pp_elementor_notused_modules');
delete_site_option('pp_elementor_notused_modules');
delete_option('pp_plugin_activated');
delete_site_option('pp_plugin_activated');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pp-custom-link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pp-custom-link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pp-custom-link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pp-custom-link' ) );

