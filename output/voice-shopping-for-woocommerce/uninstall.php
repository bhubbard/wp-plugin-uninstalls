<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcv_assistant_api_system_key');
delete_site_option('wcv_assistant_api_system_key');
delete_option('wcv_assistant_trial_valid_until');
delete_site_option('wcv_assistant_trial_valid_until');
delete_option('wcva_current_value');
delete_site_option('wcva_current_value');
delete_option('wcva_last_value');
delete_site_option('wcva_last_value');
delete_option('wcva_last_value_updated_at');
delete_site_option('wcva_last_value_updated_at');
delete_option('wcv_assistant_license_key');
delete_site_option('wcv_assistant_license_key');
delete_option('wcv_assistant_uuid');
delete_site_option('wcv_assistant_uuid');
delete_option('wcva_valid_license_provided');
delete_site_option('wcva_valid_license_provided');
delete_option('woocommerce_permalinks');
delete_site_option('woocommerce_permalinks');
delete_option('wcv_assistant_settings_updated_timestamp');
delete_site_option('wcv_assistant_settings_updated_timestamp');
delete_option('wcva_product_search');
delete_site_option('wcva_product_search');
delete_option('wcv_assistant_voice');
delete_site_option('wcv_assistant_voice');

// Delete Transients
delete_transient('wcva_basic_config_option_updated');
delete_site_transient('wcva_basic_config_option_updated');

