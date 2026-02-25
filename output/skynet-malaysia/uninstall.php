<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_skynet_settings');
delete_site_option('woocommerce_skynet_settings');
delete_option('wc_skynet_db_version');
delete_site_option('wc_skynet_db_version');

