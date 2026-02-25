<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('paytm_merchant_id');
delete_site_option('paytm_merchant_id');
delete_option('paytm_donation_details_url');
delete_site_option('paytm_donation_details_url');
delete_option('paytm_enable_address');
delete_site_option('paytm_enable_address');
delete_option('paytm_user_field');
delete_site_option('paytm_user_field');
delete_option('isWebsiteAddedDonation');
delete_site_option('isWebsiteAddedDonation');
delete_option('paytm_website');
delete_site_option('paytm_website');
delete_option('websiteOptionDonation');
delete_site_option('websiteOptionDonation');
delete_option('paytm_payment_environment');
delete_site_option('paytm_payment_environment');
delete_option('paytm_content');
delete_site_option('paytm_content');
delete_option('paytm_websiteOther');
delete_site_option('paytm_websiteOther');
delete_option('paytm_merchant_key');
delete_site_option('paytm_merchant_key');

