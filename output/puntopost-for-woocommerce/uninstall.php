<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('puntopost_for_woocommerce_api_token');
delete_site_transient('puntopost_for_woocommerce_api_token');

