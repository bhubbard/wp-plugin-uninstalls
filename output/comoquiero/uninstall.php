<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qcart_key');
delete_site_option('qcart_key');
delete_option('qcart_supermarket');
delete_site_option('qcart_supermarket');
delete_option('qcart_brands');
delete_site_option('qcart_brands');

