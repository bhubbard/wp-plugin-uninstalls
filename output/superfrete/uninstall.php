<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('superfrete_debug_mode');
delete_site_option('superfrete_debug_mode');
delete_option('superfrete_sandbox_mode');
delete_site_option('superfrete_sandbox_mode');
delete_option('superfrete_api_token_sandbox');
delete_site_option('superfrete_api_token_sandbox');
delete_option('superfrete_api_token');
delete_site_option('superfrete_api_token');
delete_option('superfrete_proxy_url');
delete_site_option('superfrete_proxy_url');
delete_option('superfrete_force_proxy');
delete_site_option('superfrete_force_proxy');
delete_option('superfrete_webhook_secret');
delete_site_option('superfrete_webhook_secret');
delete_option('superfrete_webhook_registered');
delete_site_option('superfrete_webhook_registered');
delete_option('superfrete_webhook_url');
delete_site_option('superfrete_webhook_url');
delete_option('superfrete_webhook_id');
delete_site_option('superfrete_webhook_id');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('superfrete_plugin_version');
delete_site_option('superfrete_plugin_version');
delete_option('superfrete_shipping_migrated');
delete_site_option('superfrete_shipping_migrated');
delete_option('superfrete_individual_methods_migrated');
delete_site_option('superfrete_individual_methods_migrated');
delete_option('superfrete_custom_css_vars');
delete_site_option('superfrete_custom_css_vars');
delete_option('superfrete-calculator-setting');
delete_site_option('superfrete-calculator-setting');
delete_option('superfrete_webhook_migrated');
delete_site_option('superfrete_webhook_migrated');
delete_option('superfrete_enable_calculator');
delete_site_option('superfrete_enable_calculator');
delete_option('superfrete_open_drawer_button_text');
delete_site_option('superfrete_open_drawer_button_text');
delete_option('superfrete_update_button_text');
delete_site_option('superfrete_update_button_text');
delete_option('superfrete_no_address_added_yet');
delete_site_option('superfrete_no_address_added_yet');
delete_option('superfrete_no_shipping_methods_msg');
delete_site_option('superfrete_no_shipping_methods_msg');
delete_option('superfrete_auto_calculation');
delete_site_option('superfrete_auto_calculation');
delete_option('superfrete_no_rates_message');
delete_site_option('superfrete_no_rates_message');
delete_option('superfrete_free_shipping_price');
delete_site_option('superfrete_free_shipping_price');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_store_name');
delete_site_option('woocommerce_store_name');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_number');
delete_site_option('woocommerce_store_number');
delete_option('woocommerce_store_neighborhood');
delete_site_option('woocommerce_store_neighborhood');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('superfrete_webhook_table_version');
delete_site_option('superfrete_webhook_table_version');

// Delete Transients
delete_transient('superfrete_migration_running');
delete_site_transient('superfrete_migration_running');

// Clear Cron Jobs
wp_clear_scheduled_hook('superfrete_clear_log_event');
wp_clear_scheduled_hook('superfrete_process_webhook_retries');

