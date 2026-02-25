<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stripe_forms_gutenberg_api_secret');
delete_site_option('stripe_forms_gutenberg_api_secret');
delete_option('stripe_forms_gutenberg_api_public');
delete_site_option('stripe_forms_gutenberg_api_public');

