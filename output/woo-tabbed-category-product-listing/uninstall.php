<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpbot_deactivation_reason_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpbot_deactivation_details_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('product_number');
delete_site_option('product_number');
delete_option('max_char_per_cat');
delete_site_option('max_char_per_cat');
delete_option('column_number');
delete_site_option('column_number');
delete_option('selected_categories');
delete_site_option('selected_categories');
delete_option('qc_woo_tabbed_enable_category_image');
delete_site_option('qc_woo_tabbed_enable_category_image');
delete_option('qc_woo_tabbed_display_category_url_based');
delete_site_option('qc_woo_tabbed_display_category_url_based');
delete_option('category_order');
delete_site_option('category_order');
delete_option('qcld_orderby_product');
delete_site_option('qcld_orderby_product');
delete_option('order_product_by');
delete_site_option('order_product_by');
delete_option('qcld_use_category_tab');
delete_site_option('qcld_use_category_tab');
delete_option('qc_woo_tabbed_scroll_category_clickable');
delete_site_option('qc_woo_tabbed_scroll_category_clickable');
delete_option('qc_woo_tabbed_shortcode_preview');
delete_site_option('qc_woo_tabbed_shortcode_preview');
delete_option('qc_woo_tabbed_show_empty_category');
delete_site_option('qc_woo_tabbed_show_empty_category');
delete_option('qc_woo_tabbed_show_empty_category_msg');
delete_site_option('qc_woo_tabbed_show_empty_category_msg');
delete_option('custom_global_css');
delete_site_option('custom_global_css');
delete_option('woocommerce_db_version');
delete_site_option('woocommerce_db_version');
delete_option('woocommerce_hide_out_of_stock_items');
delete_site_option('woocommerce_hide_out_of_stock_items');
delete_option('woo_tabbed_plugin_do_activation_redirect');
delete_site_option('woo_tabbed_plugin_do_activation_redirect');
delete_option('qc_woo_tabbed_display_category_image_top');
delete_site_option('qc_woo_tabbed_display_category_image_top');
delete_option('qcld_woo_minmax_dynamic_pricing_setting');
delete_site_option('qcld_woo_minmax_dynamic_pricing_setting');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('qcld_woo_minmax_category_quantity_limit');
delete_site_option('qcld_woo_minmax_category_quantity_limit');
delete_option('qcld_woo_minmax_tag_quantity_limit');
delete_site_option('qcld_woo_minmax_tag_quantity_limit');
delete_option('qcld_woo_minmax_product_quantity_limit');
delete_site_option('qcld_woo_minmax_product_quantity_limit');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'qcld_woo_minmax_tag_minimum_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'qcld_woo_minmax_tag_maximum_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'qcld_woo_minmax_tag_step_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'qcld_woo_minmax_category_minimum_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'qcld_woo_minmax_category_maximum_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'qcld_woo_minmax_category_step_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('qcld_woo_minmax_product_minimum_quantity');
delete_site_option('qcld_woo_minmax_product_minimum_quantity');
delete_option('qcld_woo_minmax_product_maximum_quantity');
delete_site_option('qcld_woo_minmax_product_maximum_quantity');
delete_option('qcld_woo_minmax_product_step_quantity');
delete_site_option('qcld_woo_minmax_product_step_quantity');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_qcld_woo_minmax_category_exclusion' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_qcld_woo_minmax_category_exclusion' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_qcld_woo_minmax_category_exclusion' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_qcld_woo_minmax_category_exclusion' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_qcld_woo_minmax_tag_exclusion' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_qcld_woo_minmax_tag_exclusion' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_qcld_woo_minmax_tag_exclusion' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_qcld_woo_minmax_tag_exclusion' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_limit_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_limit_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_limit_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_limit_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_tag_minimum_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_tag_minimum_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_tag_minimum_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_tag_minimum_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_tag_maximum_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_tag_maximum_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_tag_maximum_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_tag_maximum_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_tag_step_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_tag_step_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_tag_step_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_tag_step_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_category_minimum_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_category_minimum_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_category_minimum_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_category_minimum_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_category_maximum_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_category_maximum_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_category_maximum_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_category_maximum_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_category_step_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_category_step_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_category_step_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_qcld_woo_minmax_category_step_%' ) );

