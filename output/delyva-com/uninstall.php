<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('delyva_user_id');
delete_site_option('delyva_user_id');
delete_option('delyva_api_key');
delete_site_option('delyva_api_key');
delete_option('delyva_integration_id');
delete_site_option('delyva_integration_id');
delete_option('woocommerce_delyva_settings');
delete_site_option('woocommerce_delyva_settings');
delete_option('woocs_welcome_currency');
delete_site_option('woocs_welcome_currency');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');

