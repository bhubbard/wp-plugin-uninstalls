<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_hide_shipping_options');
delete_site_option('wc_hide_shipping_options');
delete_option('wc_hide_shipping_additional_methods');
delete_site_option('wc_hide_shipping_additional_methods');

