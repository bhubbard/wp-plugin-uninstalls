<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('solpay_donation_fundraising_settings');
delete_site_option('solpay_donation_fundraising_settings');

