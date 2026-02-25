<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('pw_affiliates_default_commission');
delete_site_option('pw_affiliates_default_commission');
delete_option('pw_affiliates_commission_before_tax');
delete_site_option('pw_affiliates_commission_before_tax');
delete_option('pw_affiliates_program_name');
delete_site_option('pw_affiliates_program_name');
delete_option('pwwa_url_fields');
delete_site_option('pwwa_url_fields');
delete_option('pwwa_affiliate_endpoint');
delete_site_option('pwwa_affiliate_endpoint');
delete_option('pw_affiliates_use_builtin_jquery_styles');
delete_site_option('pw_affiliates_use_builtin_jquery_styles');
delete_option('pw_affiliates_cookie_days');
delete_site_option('pw_affiliates_cookie_days');
delete_option('pw_affiliates_show_code_in_cart');
delete_site_option('pw_affiliates_show_code_in_cart');
delete_option('pw_affiliates_show_code_in_checkout');
delete_site_option('pw_affiliates_show_code_in_checkout');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pw_affiliates_commission' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pw_affiliates_commission' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pw_affiliates_commission' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pw_affiliates_commission' ) );

