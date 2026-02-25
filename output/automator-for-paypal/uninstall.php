<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('automator_for_paypal_mode');
delete_site_option('automator_for_paypal_mode');
delete_option('automator_for_paypal_test_client_id');
delete_site_option('automator_for_paypal_test_client_id');
delete_option('automator_for_paypal_test_client_secret');
delete_site_option('automator_for_paypal_test_client_secret');
delete_option('automator_for_paypal_test_webhook_id');
delete_site_option('automator_for_paypal_test_webhook_id');
delete_option('automator_for_paypal_live_client_id');
delete_site_option('automator_for_paypal_live_client_id');
delete_option('automator_for_paypal_live_client_secret');
delete_site_option('automator_for_paypal_live_client_secret');
delete_option('automator_for_paypal_live_webhook_id');
delete_site_option('automator_for_paypal_live_webhook_id');

