<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('icgpt_enable');
delete_site_option('icgpt_enable');
delete_option('icgpt_merchant_id');
delete_site_option('icgpt_merchant_id');
delete_option('icgpt_webhook_secret');
delete_site_option('icgpt_webhook_secret');
delete_option('icgpt_test_mode');
delete_site_option('icgpt_test_mode');
delete_option('icgpt_default_enable_checkout');
delete_site_option('icgpt_default_enable_checkout');

