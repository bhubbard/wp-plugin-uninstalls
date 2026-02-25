<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('intlwemo_post_type_settings');
delete_site_option('intlwemo_post_type_settings');
delete_option('intlwemo_wallet_address_connected_list');
delete_site_option('intlwemo_wallet_address_connected_list');
delete_option('intlwemo_enable_authors');
delete_site_option('intlwemo_enable_authors');
delete_option('intlwemo_excluded_authors');
delete_site_option('intlwemo_excluded_authors');
delete_option('intlwemo_banner_config');
delete_site_option('intlwemo_banner_config');
delete_option('intlwemo_enabled');
delete_site_option('intlwemo_enabled');
delete_option('intlwemo_wallet_address');
delete_site_option('intlwemo_wallet_address');
delete_option('intlwemo_wallet_address_connected');
delete_site_option('intlwemo_wallet_address_connected');
delete_option('intlwemo_multi_wallets_option');
delete_site_option('intlwemo_multi_wallets_option');
delete_option('intlwemo_banner_enabled');
delete_site_option('intlwemo_banner_enabled');
delete_option('intlwemo_enable_country_wallets');
delete_site_option('intlwemo_enable_country_wallets');
delete_option('intlwemo_wallet_address_overrides');
delete_site_option('intlwemo_wallet_address_overrides');
delete_option('intlwemo_custom_banner');
delete_site_option('intlwemo_custom_banner');
delete_option('intlwemo_banner_published');
delete_site_option('intlwemo_banner_published');
delete_option('wm_enabled');
delete_site_option('wm_enabled');
delete_option('wm_wallet_address');
delete_site_option('wm_wallet_address');
delete_option('wm_wallet_address_connected');
delete_site_option('wm_wallet_address_connected');
delete_option('wm_enable_authors');
delete_site_option('wm_enable_authors');
delete_option('wm_multi_wallets_option');
delete_site_option('wm_multi_wallets_option');
delete_option('wm_post_type_settings');
delete_site_option('wm_post_type_settings');
delete_option('wm_banner_enabled');
delete_site_option('wm_banner_enabled');
delete_option('wm_excluded_authors');
delete_site_option('wm_excluded_authors');
delete_option('wm_banner_config');
delete_site_option('wm_banner_config');
delete_option('wm_banner_published');
delete_site_option('wm_banner_published');
delete_option('wm_enable_country_wallets');
delete_site_option('wm_enable_country_wallets');
delete_option('wm_wallet_address_overrides');
delete_site_option('wm_wallet_address_overrides');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'intlwemo_wallet_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'intlwemo_wallet_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'intlwemo_wallet_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'intlwemo_wallet_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'intlwemo_wallet_address_connected' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'intlwemo_wallet_address_connected' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'intlwemo_wallet_address_connected' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'intlwemo_wallet_address_connected' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'intlwemo_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'intlwemo_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'intlwemo_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'intlwemo_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wm_wallet_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wm_wallet_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wm_wallet_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wm_wallet_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wm_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wm_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wm_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wm_disabled' ) );

