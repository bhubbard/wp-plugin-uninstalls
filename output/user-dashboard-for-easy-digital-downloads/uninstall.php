<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ud_for_edd_general_options');
delete_site_option('ud_for_edd_general_options');
delete_option('ud_for_edd_redirection_options');
delete_site_option('ud_for_edd_redirection_options');
delete_option('ud_for_edd_access_control_options');
delete_site_option('ud_for_edd_access_control_options');
delete_option('ud_for_edd_email_options');
delete_site_option('ud_for_edd_email_options');
delete_option('ud_for_edd_reset_options');
delete_site_option('ud_for_edd_reset_options');
delete_option('ud_for_edd_general_option');
delete_site_option('ud_for_edd_general_option');
delete_option('ud_for_edd_redirection_option');
delete_site_option('ud_for_edd_redirection_option');
delete_option('ud_for_edd_options');
delete_site_option('ud_for_edd_options');
delete_option('ud_for_edd_flush_rewrite_rules');
delete_site_option('ud_for_edd_flush_rewrite_rules');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

