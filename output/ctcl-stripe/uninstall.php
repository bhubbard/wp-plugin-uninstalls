<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ctcl_stripe_display_label');
delete_site_option('ctcl_stripe_display_label');
delete_option('ctcl_activate_stripe');
delete_site_option('ctcl_activate_stripe');
delete_option('ctcl_stripe_test_mode');
delete_site_option('ctcl_stripe_test_mode');
delete_option('ctc_stripe_test_publishable_key');
delete_site_option('ctc_stripe_test_publishable_key');
delete_option('ctc_stripe_test_secret_key');
delete_site_option('ctc_stripe_test_secret_key');
delete_option('ctc_stripe_live_publishable_key');
delete_site_option('ctc_stripe_live_publishable_key');
delete_option('ctc_stripe_live_secret_key');
delete_site_option('ctc_stripe_live_secret_key');
delete_option('ctcl_currency');
delete_site_option('ctcl_currency');

