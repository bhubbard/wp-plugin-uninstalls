<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('addToCartButtonName');
delete_site_option('addToCartButtonName');
delete_option('wspsc_private_key_one');
delete_site_option('wspsc_private_key_one');
delete_option('photopress_spsc_option_name');
delete_site_option('photopress_spsc_option_name');

