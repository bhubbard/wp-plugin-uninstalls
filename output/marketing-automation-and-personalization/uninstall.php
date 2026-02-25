<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('convesioconvert_data_exists');
delete_site_option('convesioconvert_data_exists');
delete_option('convesioconvert_consents');
delete_site_option('convesioconvert_consents');
delete_option('convesioconvert_site_id');
delete_site_option('convesioconvert_site_id');
delete_option('convesioconvert_site_token');
delete_site_option('convesioconvert_site_token');
delete_option('convesioconvert_verification_secret');
delete_site_option('convesioconvert_verification_secret');
delete_option('convesioconvert_site_url');
delete_site_option('convesioconvert_site_url');
delete_option('convesioconvert_user_email');
delete_site_option('convesioconvert_user_email');
delete_option('convesioconvert_pause');
delete_site_option('convesioconvert_pause');
delete_option('woo_marketplace_customer_id');
delete_site_option('woo_marketplace_customer_id');
delete_option('woo_marketplace_subscription_id');
delete_site_option('woo_marketplace_subscription_id');
delete_option('convesioconvert_smart_rating_dismissed');
delete_site_option('convesioconvert_smart_rating_dismissed');
delete_option('convesioconvert_smart_rating_last_fetch');
delete_site_option('convesioconvert_smart_rating_last_fetch');
delete_option('convesioconvert_smart_rating_necessary_info');
delete_site_option('convesioconvert_smart_rating_necessary_info');
delete_option('convesioconvert_terms_last_modification');
delete_site_option('convesioconvert_terms_last_modification');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('convesioconvert_activation_redirect');
delete_site_transient('convesioconvert_activation_redirect');
delete_transient('convesioconvert_dashboard_health_status');
delete_site_transient('convesioconvert_dashboard_health_status');
delete_transient('convesioconvert_health_status_fresh');
delete_site_transient('convesioconvert_health_status_fresh');
delete_transient('convesioconvert_health_status');
delete_site_transient('convesioconvert_health_status');
delete_transient('convesioconvert_consent_key');
delete_site_transient('convesioconvert_consent_key');
delete_transient('convesioconvert_integration_success_id');
delete_site_transient('convesioconvert_integration_success_id');
delete_transient('convesioconvert_onetime_notices');
delete_site_transient('convesioconvert_onetime_notices');
delete_transient('convesioconvert_token');
delete_site_transient('convesioconvert_token');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'convesioconvert_email_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'convesioconvert_email_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'convesioconvert_email_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'convesioconvert_email_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%/convesioconvert/email_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%/convesioconvert/email_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%/convesioconvert/email_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%/convesioconvert/email_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_convesioconvert_user_last_modification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_convesioconvert_user_last_modification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_convesioconvert_user_last_modification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_convesioconvert_user_last_modification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wooMarketplaceCustomerId' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wooMarketplaceCustomerId' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wooMarketplaceCustomerId' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wooMarketplaceCustomerId' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'edd_saved_cart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'edd_saved_cart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'edd_saved_cart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'edd_saved_cart' ) );

