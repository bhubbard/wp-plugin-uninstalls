<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('holnix_conf');
delete_site_option('holnix_conf');
delete_option('holnix_api_token');
delete_site_option('holnix_api_token');
delete_option('holnix_import_total_chunks');
delete_site_option('holnix_import_total_chunks');
delete_option('holnix_import_start_time');
delete_site_option('holnix_import_start_time');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');

// Delete Transients
delete_transient('holnix_update_message');
delete_site_transient('holnix_update_message');
delete_transient('holnix_api_translations');
delete_site_transient('holnix_api_translations');

