<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sesli_metin_person');
delete_site_option('sesli_metin_person');
delete_option('sesli_metin_email');
delete_site_option('sesli_metin_email');
delete_option('sesli_metin_password');
delete_site_option('sesli_metin_password');
delete_option('sesli_metin_pitch');
delete_site_option('sesli_metin_pitch');
delete_option('sesli_metin_speed');
delete_site_option('sesli_metin_speed');
delete_option('sesli_metin_post_types');
delete_site_option('sesli_metin_post_types');
delete_option('sesli_metin_language');
delete_site_option('sesli_metin_language');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sesli_metin_audio_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sesli_metin_audio_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sesli_metin_audio_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sesli_metin_audio_url' ) );

