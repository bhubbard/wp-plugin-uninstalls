<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ayudawp_esm_activated');
delete_site_option('ayudawp_esm_activated');
delete_option('ayudawp_esm_version');
delete_site_option('ayudawp_esm_version');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');

