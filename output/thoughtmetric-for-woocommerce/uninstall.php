<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('thoughtmetric_snippet');
delete_site_option('thoughtmetric_snippet');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');

