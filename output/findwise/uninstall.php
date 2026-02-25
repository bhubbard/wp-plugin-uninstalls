<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('findwise_redirect_to_finish_setup');
delete_site_option('findwise_redirect_to_finish_setup');
delete_option('findwise_pairing_token');
delete_site_option('findwise_pairing_token');
delete_option('findwise_pairing_callback_token');
delete_site_option('findwise_pairing_callback_token');
delete_option('findwise_secret_key');
delete_site_option('findwise_secret_key');

