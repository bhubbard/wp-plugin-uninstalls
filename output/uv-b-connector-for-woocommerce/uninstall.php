<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uvb_connector_woocommerce_options');
delete_site_option('uvb_connector_woocommerce_options');

