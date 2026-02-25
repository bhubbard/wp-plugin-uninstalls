<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stripe_payments_live_public_key');
delete_site_option('stripe_payments_live_public_key');
delete_option('stripe_payments_live_secret_key');
delete_site_option('stripe_payments_live_secret_key');
delete_option('stripe_payments_test_public_key');
delete_site_option('stripe_payments_test_public_key');
delete_option('stripe_payments_test_secret_key');
delete_site_option('stripe_payments_test_secret_key');
delete_option('stripe_payments_is_live_keys');
delete_site_option('stripe_payments_is_live_keys');
delete_option('stripe_payments_is_political');
delete_site_option('stripe_payments_is_political');
delete_option('stripe_payments_full_address');
delete_site_option('stripe_payments_full_address');
delete_option('stripe_payments_employment');
delete_site_option('stripe_payments_employment');
delete_option('stripe_payments_eligibility');
delete_site_option('stripe_payments_eligibility');
delete_option('stripe_payments_currency_symbol');
delete_site_option('stripe_payments_currency_symbol');
delete_option('stripe_payments_trans_prefix');
delete_site_option('stripe_payments_trans_prefix');
delete_option('stripe_payments_ella_key');
delete_site_option('stripe_payments_ella_key');
delete_option('stripe_payments_ella_secret');
delete_site_option('stripe_payments_ella_secret');
delete_option('stripe_payments_postmark_key');
delete_site_option('stripe_payments_postmark_key');
delete_option('stripe_payments_postmark_address');
delete_site_option('stripe_payments_postmark_address');
delete_option('stripe_payments_postmark_name');
delete_site_option('stripe_payments_postmark_name');
delete_option('stripe_payments_postmark_subject');
delete_site_option('stripe_payments_postmark_subject');
delete_option('ngp_api_key');
delete_site_option('ngp_api_key');
delete_option('ngp_secure_url');
delete_site_option('ngp_secure_url');
delete_option('ngp_support_phone');
delete_site_option('ngp_support_phone');
delete_option('ngp_thanks_url');
delete_site_option('ngp_thanks_url');
delete_option('stripe_payments_payment_trans_prefix');
delete_site_option('stripe_payments_payment_trans_prefix');

