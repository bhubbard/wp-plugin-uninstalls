<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qode_variation_swatches_for_woocommerce_framework_permalinks');
delete_site_option('qode_variation_swatches_for_woocommerce_framework_permalinks');
delete_option('qode_variation_swatches_for_woocommerce_framework_permalinks_updated');
delete_site_option('qode_variation_swatches_for_woocommerce_framework_permalinks_updated');

