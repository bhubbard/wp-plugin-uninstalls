<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_wctc_enabled');
delete_site_option('wc_wctc_enabled');
delete_option('wc_wctc_coupon_type');
delete_site_option('wc_wctc_coupon_type');
delete_option('wc_wctc_coupon_amount');
delete_site_option('wc_wctc_coupon_amount');
delete_option('wc_wctc_free_shipping');
delete_site_option('wc_wctc_free_shipping');
delete_option('wc_wctc_coupon_limit');
delete_site_option('wc_wctc_coupon_limit');
delete_option('wc_wctc_user_limit');
delete_site_option('wc_wctc_user_limit');
delete_option('wc_wctc_individual_use');
delete_site_option('wc_wctc_individual_use');
delete_option('wc_wctc_restrict_creation');
delete_site_option('wc_wctc_restrict_creation');
delete_option('wc_wctc_before_tax');
delete_site_option('wc_wctc_before_tax');
delete_option('wc_wctc_coupon_min_spend');
delete_site_option('wc_wctc_coupon_min_spend');
delete_option('wc_wctc_free_extax');
delete_site_option('wc_wctc_free_extax');
delete_option('wc_wctc_expires_in_days');
delete_site_option('wc_wctc_expires_in_days');
delete_option('wc_wctc_message');
delete_site_option('wc_wctc_message');
delete_option('wc_wctc_expiry_message');
delete_site_option('wc_wctc_expiry_message');
delete_option('wc_wctc_coupon_color');
delete_site_option('wc_wctc_coupon_color');
delete_option('wc_wctc_restrict_paid');
delete_site_option('wc_wctc_restrict_paid');

