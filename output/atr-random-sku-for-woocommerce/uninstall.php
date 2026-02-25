<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('atr_select_sku_format');
delete_site_option('atr_select_sku_format');
delete_option('atr_prefix_sku');
delete_site_option('atr_prefix_sku');
delete_option('atr_incremental_sku_start');
delete_site_option('atr_incremental_sku_start');
delete_option('atr_force_sku_on_empty');
delete_site_option('atr_force_sku_on_empty');
delete_option('atr_sku_length');
delete_site_option('atr_sku_length');
delete_option('atr_characters_for_SKU');
delete_site_option('atr_characters_for_SKU');
delete_option('atr_min_number_for_number');
delete_site_option('atr_min_number_for_number');
delete_option('atr_max_number_for_number');
delete_site_option('atr_max_number_for_number');
delete_option('atr_incremental_sku_min_num_digits');
delete_site_option('atr_incremental_sku_min_num_digits');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

