<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sorcart_enable');
delete_site_option('sorcart_enable');
delete_option('multipurchase_enable');
delete_site_option('multipurchase_enable');
delete_option('addtocart_button_text');
delete_site_option('addtocart_button_text');

