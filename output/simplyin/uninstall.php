<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('SimplyInApiConnection');
delete_site_option('SimplyInApiConnection');
delete_option('SimplyIn_Backend_Url');
delete_site_option('SimplyIn_Backend_Url');
delete_option('SimplyIn_Environment');
delete_site_option('SimplyIn_Environment');
delete_option('simplyin_register_by_default');
delete_site_option('simplyin_register_by_default');
delete_option('SimplyInShippingMappingCache');
delete_site_option('SimplyInShippingMappingCache');
delete_option('SimplyInSettingsErrorMsg');
delete_site_option('SimplyInSettingsErrorMsg');
delete_option('SimplyInSettingsSuccessMsg');
delete_site_option('SimplyInSettingsSuccessMsg');
delete_option('SimplyInRegisterByDefaultDisabled');
delete_site_option('SimplyInRegisterByDefaultDisabled');
delete_option('simplyin_api_key');
delete_site_option('simplyin_api_key');
delete_option('SimplyInLogisticsPartnersOrder');
delete_site_option('SimplyInLogisticsPartnersOrder');
delete_option('woocommerce_checkout_order_received_endpoint');
delete_site_option('woocommerce_checkout_order_received_endpoint');
delete_option('woocommerce_checkout_order_pay_endpoint');
delete_site_option('woocommerce_checkout_order_pay_endpoint');
delete_option('SIMPLYIN_DOCS_INFO');
delete_site_option('SIMPLYIN_DOCS_INFO');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('SimplyIn_Api_Logs');
delete_site_option('SimplyIn_Api_Logs');
delete_option('woocommerce_simplyin_settings');
delete_site_option('woocommerce_simplyin_settings');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('SimplyInShippingIntegrations');
delete_site_option('SimplyInShippingIntegrations');
delete_option('SimplyInSwitchLastChange');
delete_site_option('SimplyInSwitchLastChange');
delete_option('SimplyInLastSyncTimestamp');
delete_site_option('SimplyInLastSyncTimestamp');
delete_option('SimplyInTransactionHistoryLengthDay');
delete_site_option('SimplyInTransactionHistoryLengthDay');
delete_option('SimplyInRegisterByDefaultStateOld');
delete_site_option('SimplyInRegisterByDefaultStateOld');

// Clear Cron Jobs
wp_clear_scheduled_hook('simplyin_add_udpate_cron_interval');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_simplyin_payment_timeout_failed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_simplyin_payment_timeout_failed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_simplyin_payment_timeout_failed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_simplyin_payment_timeout_failed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_simplyin_payment_timeout_failed_payment_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_simplyin_payment_timeout_failed_payment_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_simplyin_payment_timeout_failed_payment_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_simplyin_payment_timeout_failed_payment_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'SimplyInUserExist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'SimplyInUserExist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'SimplyInUserExist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'SimplyInUserExist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'SimplyInUserHmacEmail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'SimplyInUserHmacEmail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'SimplyInUserHmacEmail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'SimplyInUserHmacEmail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'SimplyInUserStatus' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'SimplyInUserStatus' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'SimplyInUserStatus' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'SimplyInUserStatus' ) );

