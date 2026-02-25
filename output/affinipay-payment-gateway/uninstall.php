<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('affinipay_public_key');
delete_site_option('affinipay_public_key');
delete_option('affinipay_secret_key');
delete_site_option('affinipay_secret_key');
delete_option('affinipay_operating_mode');
delete_site_option('affinipay_operating_mode');
delete_option('affinipay_receipt_page');
delete_site_option('affinipay_receipt_page');
delete_option('affinipay_mode');
delete_site_option('affinipay_mode');
delete_option('affinipay_test_public_key');
delete_site_option('affinipay_test_public_key');
delete_option('affinipay_test_secret_key');
delete_site_option('affinipay_test_secret_key');
delete_option('affinipay_test_account_id');
delete_site_option('affinipay_test_account_id');
delete_option('affinipay_live_public_key');
delete_site_option('affinipay_live_public_key');
delete_option('affinipay_live_secret_key');
delete_site_option('affinipay_live_secret_key');
delete_option('affinipay_live_account_id');
delete_site_option('affinipay_live_account_id');

