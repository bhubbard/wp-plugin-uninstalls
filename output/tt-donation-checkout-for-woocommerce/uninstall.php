<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('donation_tip_checkout_enabled');
delete_site_option('donation_tip_checkout_enabled');
delete_option('donation_tip_checkout_message');
delete_site_option('donation_tip_checkout_message');
delete_option('donation_tip_checkout_button');
delete_site_option('donation_tip_checkout_button');
delete_option('donation_tip_checkout_label');
delete_site_option('donation_tip_checkout_label');
delete_option('donation_tip_checkout_default_amount');
delete_site_option('donation_tip_checkout_default_amount');
delete_option('donation_tip_checkout_min_amount');
delete_site_option('donation_tip_checkout_min_amount');
delete_option('donation_tip_checkout_taxable');
delete_site_option('donation_tip_checkout_taxable');
delete_option('donation_tip_checkout_minorder');
delete_site_option('donation_tip_checkout_minorder');

