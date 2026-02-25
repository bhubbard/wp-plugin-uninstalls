<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('piotnetforms-stripe-publishable-key');
delete_site_option('piotnetforms-stripe-publishable-key');
delete_option('piotnetforms-recaptcha-site-key');
delete_site_option('piotnetforms-recaptcha-site-key');
delete_option('piotnetforms-recaptcha-secret-key');
delete_site_option('piotnetforms-recaptcha-secret-key');
delete_option('piotnetforms-activated');
delete_site_option('piotnetforms-activated');
delete_option('piotnetforms_do_flush');
delete_site_option('piotnetforms_do_flush');
delete_option('piotnetforms-google-sheets-client-id');
delete_site_option('piotnetforms-google-sheets-client-id');
delete_option('piotnetforms-google-sheets-client-secret');
delete_site_option('piotnetforms-google-sheets-client-secret');
delete_option('piotnetforms-google-maps-api-key');
delete_site_option('piotnetforms-google-maps-api-key');
delete_option('piotnetforms-stripe-secret-key');
delete_site_option('piotnetforms-stripe-secret-key');
delete_option('piotnetforms-mailchimp-api-key');
delete_site_option('piotnetforms-mailchimp-api-key');
delete_option('piotnetforms-mailerlite-api-key');
delete_site_option('piotnetforms-mailerlite-api-key');
delete_option('piotnetforms-activecampaign-api-key');
delete_site_option('piotnetforms-activecampaign-api-key');
delete_option('piotnetforms-activecampaign-api-url');
delete_site_option('piotnetforms-activecampaign-api-url');
delete_option('piotnetforms-zoho-domain');
delete_site_option('piotnetforms-zoho-domain');
delete_option('piotnetforms-zoho-client-id');
delete_site_option('piotnetforms-zoho-client-id');
delete_option('piotnetforms-zoho-client-secret');
delete_site_option('piotnetforms-zoho-client-secret');
delete_option('piotnetforms-zoho-refresh-token');
delete_site_option('piotnetforms-zoho-refresh-token');
delete_option('piotnetforms-zoho-token');
delete_site_option('piotnetforms-zoho-token');
delete_option('piotnetforms-paypal-client-id');
delete_site_option('piotnetforms-paypal-client-id');
delete_option('piotnetforms-username');
delete_site_option('piotnetforms-username');
delete_option('piotnetforms-password');
delete_site_option('piotnetforms-password');
delete_option('piotnetforms_do_activation_redirect');
delete_site_option('piotnetforms_do_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_piotnetforms_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_piotnetforms_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_piotnetforms_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_piotnetforms_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_piotnet-revision-version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_piotnet-revision-version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_piotnet-revision-version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_piotnet-revision-version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_piotnetforms_shortcode_in_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_piotnetforms_shortcode_in_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_piotnetforms_shortcode_in_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_piotnetforms_shortcode_in_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_submit_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_submit_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_submit_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_submit_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_submit_button_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_submit_button_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_submit_button_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_submit_button_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_piotnet-widget-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_piotnet-widget-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_piotnet-widget-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_piotnet-widget-settings' ) );

