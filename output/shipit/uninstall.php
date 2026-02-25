<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shipit_do_activation_redirect');
delete_site_option('shipit_do_activation_redirect');
delete_option('shipit_user');
delete_site_option('shipit_user');
delete_option('shipit_token');
delete_site_option('shipit_token');
delete_option('shipit_account_country');
delete_site_option('shipit_account_country');
delete_option('shipit_plugin_redirect');
delete_site_option('shipit_plugin_redirect');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_shipit_settings');
delete_site_option('woocommerce_shipit_settings');
delete_option('shipit_seccond_setting');
delete_site_option('shipit_seccond_setting');
delete_option('shipit_db_tables_verify ');
delete_site_option('shipit_db_tables_verify ');
delete_option('shipit_auth');
delete_site_option('shipit_auth');
delete_option('shipit_db_tables_verify');
delete_site_option('shipit_db_tables_verify');
delete_option('shipit_communes_loaded');
delete_site_option('shipit_communes_loaded');
delete_option('shipit_webhook');
delete_site_option('shipit_webhook');
delete_option('wc_fields_billing');
delete_site_option('wc_fields_billing');
delete_option('wooccm_billing');
delete_site_option('wooccm_billing');
delete_option('shipit_migration');
delete_site_option('shipit_migration');
delete_option('shipit_webhook_integration');
delete_site_option('shipit_webhook_integration');

// Clear Cron Jobs
wp_clear_scheduled_hook('isa_add_every_fifteen_minutes');
wp_clear_scheduled_hook('wp_every_one_hour_cron_action');

