<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('applepay_db_version');
delete_site_option('applepay_db_version');
delete_option('cofi_db_version');
delete_site_option('cofi_db_version');
delete_option('email_sent');
delete_site_option('email_sent');
delete_option('lusopaygateway_custom_field_2_value');
delete_site_option('lusopaygateway_custom_field_2_value');
delete_option('custom_field_2_value');
delete_site_option('custom_field_2_value');
delete_option('woocommerce_multibanco-e-ou-payshop-by-lusopay_settings');
delete_site_option('woocommerce_multibanco-e-ou-payshop-by-lusopay_settings');
delete_option('mbway_db_version');
delete_site_option('mbway_db_version');
delete_option('mag_db_version');
delete_site_option('mag_db_version');
delete_option('pisp_db_version');
delete_site_option('pisp_db_version');
delete_option('woocommerce_lusopay_applepay_settings');
delete_site_option('woocommerce_lusopay_applepay_settings');
delete_option('woocommerce_lusopay_cofi_settings');
delete_site_option('woocommerce_lusopay_cofi_settings');
delete_option('woocommerce_lusopaygateway_settings');
delete_site_option('woocommerce_lusopaygateway_settings');
delete_option('woocommerce_lusopay_mbway_settings');
delete_site_option('woocommerce_lusopay_mbway_settings');
delete_option('woocommerce_lusopay_payshop_settings');
delete_site_option('woocommerce_lusopay_payshop_settings');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('lusopay_terms_accepted');
delete_site_option('lusopay_terms_accepted');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpml_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpml_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpml_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpml_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'admin_notice_lusopaygateway_instrutions_to_client_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'admin_notice_lusopaygateway_instrutions_to_client_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'admin_notice_lusopaygateway_instrutions_to_client_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'admin_notice_lusopaygateway_instrutions_to_client_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'admin_notices_lusopaygateway_instrutions_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'admin_notices_lusopaygateway_instrutions_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'admin_notices_lusopaygateway_instrutions_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'admin_notices_lusopaygateway_instrutions_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'admin_notice_lusopaygateway_marketing_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'admin_notice_lusopaygateway_marketing_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'admin_notice_lusopaygateway_marketing_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'admin_notice_lusopaygateway_marketing_dismissed' ) );

