<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dbem_rsvp_enabled');
delete_site_option('dbem_rsvp_enabled');
delete_option('dbem_bookings_currency');
delete_site_option('dbem_bookings_currency');
delete_option('aff_default_referral_status');
delete_site_option('aff_default_referral_status');

