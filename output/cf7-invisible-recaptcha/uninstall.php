<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('invisible_recaptcha_sitekey');
delete_site_option('invisible_recaptcha_sitekey');
delete_option('invisible_recaptcha_secretkey');
delete_site_option('invisible_recaptcha_secretkey');
delete_option('invisible_recaptcha_badge');
delete_site_option('invisible_recaptcha_badge');
delete_option('invisible_recaptcha_badge_position');
delete_site_option('invisible_recaptcha_badge_position');
delete_option('invisible_recaptcha_button_class');
delete_site_option('invisible_recaptcha_button_class');
delete_option('invisible_recaptcha_badge_exclude');
delete_site_option('invisible_recaptcha_badge_exclude');
delete_option('invisible_recaptcha_enable');
delete_site_option('invisible_recaptcha_enable');
delete_option('wpgdprc_integrations_contact-form-7_error_message');
delete_site_option('wpgdprc_integrations_contact-form-7_error_message');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_messages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_messages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_messages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_messages' ) );

