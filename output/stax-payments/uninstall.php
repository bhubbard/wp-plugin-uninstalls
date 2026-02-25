<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stax_token');
delete_site_option('stax_token');
delete_option('stax_payment_btn_options');
delete_site_option('stax_payment_btn_options');

