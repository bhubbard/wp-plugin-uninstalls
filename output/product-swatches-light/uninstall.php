<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('etfw_transients');
delete_site_option('etfw_transients');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_delete_on_uninstall' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_disable_cache' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_lw_product_swatches_delete_on_uninstall');
delete_site_option('wc_lw_product_swatches_delete_on_uninstall');
delete_option('product_swatches_schedules');
delete_site_option('product_swatches_schedules');
delete_option('esfw_step_label');
delete_site_option('esfw_step_label');
delete_option('esfw_step');
delete_site_option('esfw_step');
delete_option('esfw_max_steps');
delete_site_option('esfw_max_steps');
delete_option('psl_product_attribute');
delete_site_option('psl_product_attribute');
delete_option('psl_product_attribute_terms');
delete_site_option('psl_product_attribute_terms');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_position_in_list' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('lw_swatches_tasks');
delete_site_option('lw_swatches_tasks');
delete_option('productSwatchesEnableRegenerationSchedule');
delete_site_option('productSwatchesEnableRegenerationSchedule');
delete_option('productSwatchesRegenerationScheduleInterval');
delete_site_option('productSwatchesRegenerationScheduleInterval');
delete_option('esfw_running');
delete_site_option('esfw_running');
delete_option('esfw_completed');
delete_site_option('esfw_completed');

// Delete Transients
delete_transient('wc_attribute_taxonomies');
delete_site_transient('wc_attribute_taxonomies');

// Clear Cron Jobs
wp_clear_scheduled_hook('woocommerce_flush_rewrite_rules');
wp_clear_scheduled_hook('lw_swatches_run_tasks');

