<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alg_wc_order_status_rules_plugin_enabled');
delete_site_option('alg_wc_order_status_rules_plugin_enabled');
delete_option('alg_wc_order_status_rules_use_action_scheduler');
delete_site_option('alg_wc_order_status_rules_use_action_scheduler');
delete_option('alg_wc_order_status_rules_action_scheduler_interval');
delete_site_option('alg_wc_order_status_rules_action_scheduler_interval');
delete_option('alg_wc_order_status_rules_meta_box_screen');
delete_site_option('alg_wc_order_status_rules_meta_box_screen');
delete_option('alg_wc_order_status_rules_compatibility_doctreat');
delete_site_option('alg_wc_order_status_rules_compatibility_doctreat');
delete_option('alg_wc_order_status_rules_allow_url');
delete_site_option('alg_wc_order_status_rules_allow_url');
delete_option('alg_wc_order_status_rules_debug');
delete_site_option('alg_wc_order_status_rules_debug');
delete_option('alg_wc_order_status_rules_status_functions');
delete_site_option('alg_wc_order_status_rules_status_functions');
delete_option('alg_wc_order_status_rules_status_change_hooks');
delete_site_option('alg_wc_order_status_rules_status_change_hooks');
delete_option('alg_wc_order_status_rules_hooks');
delete_site_option('alg_wc_order_status_rules_hooks');
delete_option('alg_wc_order_status_rules_no_history');
delete_site_option('alg_wc_order_status_rules_no_history');
delete_option('alg_wc_order_status_rules_run_now');
delete_site_option('alg_wc_order_status_rules_run_now');
delete_option('alg_wc_order_status_rules_enabled');
delete_site_option('alg_wc_order_status_rules_enabled');
delete_option('alg_wc_order_status_rules_from');
delete_site_option('alg_wc_order_status_rules_from');
delete_option('alg_wc_order_status_rules_to');
delete_site_option('alg_wc_order_status_rules_to');
delete_option('alg_wc_order_status_rules_time_trigger');
delete_site_option('alg_wc_order_status_rules_time_trigger');
delete_option('alg_wc_order_status_rules_time_trigger_unit');
delete_site_option('alg_wc_order_status_rules_time_trigger_unit');
delete_option('alg_wc_order_status_rules_skip_days');
delete_site_option('alg_wc_order_status_rules_skip_days');
delete_option('alg_wc_order_status_rules_skip_dates');
delete_site_option('alg_wc_order_status_rules_skip_dates');
delete_option('alg_wc_order_status_rules_title');
delete_site_option('alg_wc_order_status_rules_title');
delete_option('alg_wc_order_status_rules_disabled_conditions');
delete_site_option('alg_wc_order_status_rules_disabled_conditions');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_order_status_rules_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_wc_order_status_rules_non_matching');
delete_site_option('alg_wc_order_status_rules_non_matching');
delete_option('alg_wc_order_status_rules_process_rules_time_run');
delete_site_option('alg_wc_order_status_rules_process_rules_time_run');
delete_option('alg_wc_order_status_rules_wc_get_orders_max_orders');
delete_site_option('alg_wc_order_status_rules_wc_get_orders_max_orders');
delete_option('alg_wc_order_status_rules_wc_get_orders_args');
delete_site_option('alg_wc_order_status_rules_wc_get_orders_args');
delete_option('alg_wc_order_status_rules_use_wp_cron');
delete_site_option('alg_wc_order_status_rules_use_wp_cron');
delete_option('alg_wc_order_status_rules_process_rules_time_schedule');
delete_site_option('alg_wc_order_status_rules_process_rules_time_schedule');
delete_option('alg_wc_order_status_rules_wp_cron_schedule');
delete_site_option('alg_wc_order_status_rules_wp_cron_schedule');
delete_option('alg_wc_order_status_rules_default_order_status');
delete_site_option('alg_wc_order_status_rules_default_order_status');
delete_option('alg_wc_osr_my_account_orders_status_history_enabled');
delete_site_option('alg_wc_osr_my_account_orders_status_history_enabled');
delete_option('alg_wc_osr_my_account_orders_status_history_position');
delete_site_option('alg_wc_osr_my_account_orders_status_history_position');
delete_option('alg_wc_osr_my_account_orders_status_history_column_title');
delete_site_option('alg_wc_osr_my_account_orders_status_history_column_title');
delete_option('alg_wc_osr_my_account_orders_status_history_templates');
delete_site_option('alg_wc_osr_my_account_orders_status_history_templates');
delete_option('alg_wc_osr_my_account_orders_status_history_reverse');
delete_site_option('alg_wc_osr_my_account_orders_status_history_reverse');
delete_option('alg_wc_order_status_rules_bacs_process_payment_order_status');
delete_site_option('alg_wc_order_status_rules_bacs_process_payment_order_status');
delete_option('alg_wc_order_status_rules_cheque_process_payment_order_status');
delete_site_option('alg_wc_order_status_rules_cheque_process_payment_order_status');
delete_option('alg_wc_order_status_rules_cod_process_payment_order_status');
delete_site_option('alg_wc_order_status_rules_cod_process_payment_order_status');
delete_option('alg_wc_order_status_rules_version');
delete_site_option('alg_wc_order_status_rules_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('alg_wc_order_status_rules_process_rules');

