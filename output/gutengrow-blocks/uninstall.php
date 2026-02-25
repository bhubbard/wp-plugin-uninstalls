<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gutengrow_blocks_status');
delete_site_option('gutengrow_blocks_status');
delete_option('gutengrow_stripe_settings');
delete_site_option('gutengrow_stripe_settings');
delete_option('gutengrow_instagram_settings');
delete_site_option('gutengrow_instagram_settings');
delete_option('gutengrow_db_version');
delete_site_option('gutengrow_db_version');
delete_option('gutengrow_google_sheets_settings');
delete_site_option('gutengrow_google_sheets_settings');
delete_option('gutengrow_stripe_test_secret_key');
delete_site_option('gutengrow_stripe_test_secret_key');
delete_option('gutengrow_stripe_live_secret_key');
delete_site_option('gutengrow_stripe_live_secret_key');
delete_option('gutengrow_stripe_configured');
delete_site_option('gutengrow_stripe_configured');
delete_option('gutengrow_stripe_products');
delete_site_option('gutengrow_stripe_products');
delete_option('stripe_products');
delete_site_option('stripe_products');
delete_option('gutengrow_products');
delete_site_option('gutengrow_products');
delete_option('gutengrow_stripe_currency');
delete_site_option('gutengrow_stripe_currency');
delete_option('gutengrow_stripe_currency_symbol');
delete_site_option('gutengrow_stripe_currency_symbol');
delete_option('gutengrow_stripe_publishable_key');
delete_site_option('gutengrow_stripe_publishable_key');
delete_option('gutengrow_stripe_success_page');
delete_site_option('gutengrow_stripe_success_page');
delete_option('gutengrow_stripe_cancel_page');
delete_site_option('gutengrow_stripe_cancel_page');
delete_option('stripe_test_secret_key');
delete_site_option('stripe_test_secret_key');
delete_option('stripe_live_secret_key');
delete_site_option('stripe_live_secret_key');

