<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('google_dynamic_conversion_tracking_for_woocommerce_option_name');
delete_site_option('google_dynamic_conversion_tracking_for_woocommerce_option_name');

