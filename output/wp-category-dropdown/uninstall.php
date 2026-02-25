<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_permalinks');
delete_site_option('woocommerce_permalinks');

// Delete Transients
delete_transient('wpcd_active');
delete_site_transient('wpcd_active');

