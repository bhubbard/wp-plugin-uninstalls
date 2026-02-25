<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wbc_options');
delete_site_option('wbc_options');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');

