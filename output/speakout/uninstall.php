<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dk_speakout_options');
delete_site_option('dk_speakout_options');
delete_option('dk_speakout_pro_version');
delete_site_option('dk_speakout_pro_version');
delete_option('dk_speakout_version');
delete_site_option('dk_speakout_version');
delete_option('dk_speakout_license_key_verified');
delete_site_option('dk_speakout_license_key_verified');
delete_option('dk_speakout_license_key');
delete_site_option('dk_speakout_license_key');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mailerlite_form_hidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mailerlite_form_hidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mailerlite_form_hidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mailerlite_form_hidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'SpeakOut_plugin_notice_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'SpeakOut_plugin_notice_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'SpeakOut_plugin_notice_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'SpeakOut_plugin_notice_ignore' ) );

