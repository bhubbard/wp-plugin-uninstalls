<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WooCommerce_default_catalog_orderby');
delete_site_option('WooCommerce_default_catalog_orderby');

