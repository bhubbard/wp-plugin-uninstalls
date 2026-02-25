<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cbxmcratingreview_emails');
delete_site_option('cbxmcratingreview_emails');
delete_option('cbxmcratingreview_version');
delete_site_option('cbxmcratingreview_version');
delete_option('cbxmcratingreview_email_tpl');
delete_site_option('cbxmcratingreview_email_tpl');
delete_option('cbxmcratingreview_pages');
delete_site_option('cbxmcratingreview_pages');

// Delete Transients
delete_transient('cbxmcratingreview_upgraded_notice');
delete_site_transient('cbxmcratingreview_upgraded_notice');
delete_transient('cbxmcratingreview_activated_notice');
delete_site_transient('cbxmcratingreview_activated_notice');
delete_transient('cbxmcratingreview_proaddon_deactivated');
delete_site_transient('cbxmcratingreview_proaddon_deactivated');
delete_transient('cbxmcratingreview_commentaddon_deactivated');
delete_site_transient('cbxmcratingreview_commentaddon_deactivated');
delete_transient('cbxmcratingreview_mycredaddon_deactivated');
delete_site_transient('cbxmcratingreview_mycredaddon_deactivated');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cbxmcratingreview_avg' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cbxmcratingreview_avg' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cbxmcratingreview_avg' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cbxmcratingreview_avg' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cbxmcratingreview_total' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cbxmcratingreview_total' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cbxmcratingreview_total' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cbxmcratingreview_total' ) );

