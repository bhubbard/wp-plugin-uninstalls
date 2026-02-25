<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simplepayjppayment-live-enabled');
delete_site_option('simplepayjppayment-live-enabled');
delete_option('simplepayjppayment-test-secret-key');
delete_site_option('simplepayjppayment-test-secret-key');
delete_option('simplepayjppayment-live-secret-key');
delete_site_option('simplepayjppayment-live-secret-key');
delete_option('simplepayjppayment-test-public-key');
delete_site_option('simplepayjppayment-test-public-key');
delete_option('simplepayjppayment-live-public-key');
delete_site_option('simplepayjppayment-live-public-key');
delete_option('simplepayjppayment-encrypt-key');
delete_site_option('simplepayjppayment-encrypt-key');

