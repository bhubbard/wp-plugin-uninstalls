<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fraudguard_plugin_activation_redirect');
delete_site_option('fraudguard_plugin_activation_redirect');
delete_option('fraudguard_notifications_enabled');
delete_site_option('fraudguard_notifications_enabled');
delete_option('fraudguard_admin_emails');
delete_site_option('fraudguard_admin_emails');
delete_option('fraudguard_first_order_rules_enabled');
delete_site_option('fraudguard_first_order_rules_enabled');
delete_option('fraudguard_first_order_weight');
delete_site_option('fraudguard_first_order_weight');
delete_option('fraudguard_risk_score_threshold');
delete_site_option('fraudguard_risk_score_threshold');
delete_option('fraudguard_geo_rules_enabled');
delete_site_option('fraudguard_geo_rules_enabled');
delete_option('fraudguard_check_address_match');
delete_site_option('fraudguard_check_address_match');
delete_option('fraudguard_address_match_weight');
delete_site_option('fraudguard_address_match_weight');
delete_option('fraudguard_check_phone_country');
delete_site_option('fraudguard_check_phone_country');
delete_option('fraudguard_phone_match_weight');
delete_site_option('fraudguard_phone_match_weight');
delete_option('fraudguard_max_order_amount');
delete_site_option('fraudguard_max_order_amount');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('fraudguard_high_risk_countries');
delete_site_option('fraudguard_high_risk_countries');
delete_option('fraudguard_order_condition_logic');
delete_site_option('fraudguard_order_condition_logic');
delete_option('fraudguard_order_status_condition');
delete_site_option('fraudguard_order_status_condition');
delete_option('fraudguard_enabled');
delete_site_option('fraudguard_enabled');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fraudguard_is_flagged' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fraudguard_is_flagged' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fraudguard_is_flagged' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fraudguard_is_flagged' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fraudguard_risk_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fraudguard_risk_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fraudguard_risk_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fraudguard_risk_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fraudguard_triggered_rules' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fraudguard_triggered_rules' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fraudguard_triggered_rules' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fraudguard_triggered_rules' ) );

