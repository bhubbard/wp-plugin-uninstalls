<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sd_stripe_private_key');
delete_site_option('sd_stripe_private_key');
delete_option('sd_stripe_public_key');
delete_site_option('sd_stripe_public_key');

