<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wgb_offer_rules_option_values');
delete_site_option('wgb_offer_rules_option_values');
delete_option('wgbl_rules');
delete_site_option('wgbl_rules');
delete_option('wgbl_option_values');
delete_site_option('wgbl_option_values');
delete_option('wgb_option_values');
delete_site_option('wgb_option_values');
delete_option('wgb_some_setting');
delete_site_option('wgb_some_setting');
delete_option('wgb_usage_track');
delete_site_option('wgb_usage_track');
delete_option('ithemeland_wgb_email_subscription_sent');
delete_site_option('ithemeland_wgb_email_subscription_sent');
delete_option('wgb_onboarding');
delete_site_option('wgb_onboarding');
delete_option('wgb_opt_in');
delete_site_option('wgb_opt_in');
delete_option('wgb_settings');
delete_site_option('wgb_settings');
delete_option('wgb_rules');
delete_site_option('wgb_rules');
delete_option('itg_localization_free');
delete_site_option('itg_localization_free');
delete_option('itg_localization_our_gift');
delete_site_option('itg_localization_our_gift');
delete_option('itg_localization_gift_cart_type_label');
delete_site_option('itg_localization_gift_cart_type_label');
delete_option('itg_localization_select_gift');
delete_site_option('itg_localization_select_gift');
delete_option('itg_localization_free_gift_removed');
delete_site_option('itg_localization_free_gift_removed');
delete_option('itg_localization_notice_checkout_message');
delete_site_option('itg_localization_notice_checkout_message');
delete_option('itg_localization_notice_checkout_message_link_here');
delete_site_option('itg_localization_notice_checkout_message_link_here');
delete_option('itg_localization_free_gift_added');
delete_site_option('itg_localization_free_gift_added');
delete_option('itg_localization_add_gift');
delete_site_option('itg_localization_add_gift');
delete_option('itg_localization_no_thanks');
delete_site_option('itg_localization_no_thanks');
delete_option('itg_localization_free_gift_empty_message');
delete_site_option('itg_localization_free_gift_empty_message');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price_for_gift' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price_for_gift' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price_for_gift' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price_for_gift' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gift_set' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gift_set' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gift_set' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gift_set' ) );

