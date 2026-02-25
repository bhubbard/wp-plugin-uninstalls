<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('BeRocket_aapf_additional_tables_addon_position');
delete_site_option('BeRocket_aapf_additional_tables_addon_position');
delete_option('BeRocket_aapf_additional_tables_addon_position_data');
delete_site_option('BeRocket_aapf_additional_tables_addon_position_data');
delete_option('br_filters_options');
delete_site_option('br_filters_options');
delete_option('widget_berocket_aapf_widget');
delete_site_option('widget_berocket_aapf_widget');
delete_option('berocket_aapf_custom_post_meta');
delete_site_option('berocket_aapf_custom_post_meta');
delete_option('berocket_cpm_update_required');
delete_site_option('berocket_cpm_update_required');
delete_option('berocket_key_activated_plugins');
delete_site_option('berocket_key_activated_plugins');
delete_option('berocket_framework_option_global');
delete_site_option('berocket_framework_option_global');
delete_option('BeRocket_Framework_plugins_version_check');
delete_site_option('BeRocket_Framework_plugins_version_check');
delete_option('berocket_admin_notices');
delete_site_option('berocket_admin_notices');
delete_option('berocket_email_subscribed');
delete_site_option('berocket_email_subscribed');
delete_option('berocket_last_close_notices_time');
delete_site_option('berocket_last_close_notices_time');
delete_option('berocket_current_displayed_notice');
delete_site_option('berocket_current_displayed_notice');
delete_option('berocket_admin_notices_last_on_options');
delete_site_option('berocket_admin_notices_last_on_options');
delete_option('berocket_admin_notices_rate_stars');
delete_site_option('berocket_admin_notices_rate_stars');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'berocket_plugin_error_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('berocket_information_notices');
delete_site_option('berocket_information_notices');
delete_option('BeRocket_account_option');
delete_site_option('BeRocket_account_option');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_upgrade' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('widget_berocket_aapf_single');
delete_site_option('widget_berocket_aapf_single');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('xts-woodmart-options');
delete_site_option('xts-woodmart-options');
delete_option('wcpt_shortcode_defaults');
delete_site_option('wcpt_shortcode_defaults');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_visibility_method' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('berocket_aapf_filters_setup_wizard_list');
delete_site_option('berocket_aapf_filters_setup_wizard_list');
delete_option('BeRocket_AAPF_getall_Template_Styles');
delete_site_option('BeRocket_AAPF_getall_Template_Styles');
delete_option('brapf_variation_attr_fix');
delete_site_option('brapf_variation_attr_fix');
delete_option('brapf_variation_attr_fix_data');
delete_site_option('brapf_variation_attr_fix_data');
delete_option('brapf_variation_attr_fix_count');
delete_site_option('brapf_variation_attr_fix_count');
delete_option('berocket_wpml_attribute_slug_untranslate');
delete_site_option('berocket_wpml_attribute_slug_untranslate');
delete_option('braapf_sliders');
delete_site_option('braapf_sliders');
delete_option('woocommerce_hide_out_of_stock_items');
delete_site_option('woocommerce_hide_out_of_stock_items');
delete_option('berocket_filter_open_wizard_on_settings');
delete_site_option('berocket_filter_open_wizard_on_settings');
delete_option('br_load_more_products');
delete_site_option('br_load_more_products');
delete_option('widget_berocket_aapf_group');
delete_site_option('widget_berocket_aapf_group');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('br_filters_version');
delete_site_option('br_filters_version');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('braapf_new_filters_converted');
delete_site_option('braapf_new_filters_converted');
delete_option('woocommerce_default_catalog_orderby');
delete_site_option('woocommerce_default_catalog_orderby');
delete_option('berocket_permalink_option');
delete_site_option('berocket_permalink_option');
delete_option('berocket_nn_permalink_option');
delete_site_option('berocket_nn_permalink_option');
delete_option('BeRocket_selector_wizard_status');
delete_site_option('BeRocket_selector_wizard_status');
delete_option('berocket_multisite_import_ready');
delete_site_option('berocket_multisite_import_ready');

// Delete Transients
delete_transient('braapf_product_lookup_tables_is_running');
delete_site_transient('braapf_product_lookup_tables_is_running');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_berocket_framework_plugin_is_active_%', '_site_transient_berocket_framework_plugin_is_active_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('berocket_plugin_paid_info');
delete_site_transient('berocket_plugin_paid_info');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_paid_info', '_site_transient_%_paid_info' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('br_plugin_activation');
delete_site_transient('br_plugin_activation');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_br_plugin_api_%', '_site_transient_br_plugin_api_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_brplugin_info_%', '_site_transient_brplugin_info_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('BeRocket_products_label_style_generate');
delete_site_transient('BeRocket_products_label_style_generate');
delete_transient('wc_products_notonsale');
delete_site_transient('wc_products_notonsale');

// Clear Cron Jobs
wp_clear_scheduled_hook('braapf_additional_table_cron');
wp_clear_scheduled_hook('brapf_fix_varattr');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'berocket_post_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'berocket_post_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'berocket_post_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'berocket_post_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_visible' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_visible' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_visible' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_visible' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_invisible' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_invisible' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_invisible' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_invisible' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'child' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'child' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'child' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'child' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'color_gradient' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'color_gradient' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'color_gradient' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'color_gradient' ) );

