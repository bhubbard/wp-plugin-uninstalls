<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nc_ajax_cart_settings');
delete_site_option('nc_ajax_cart_settings');

