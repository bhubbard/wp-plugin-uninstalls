<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_permalinks');
delete_site_option('woocommerce_permalinks');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('doofinder_script_migrated');
delete_site_option('doofinder_script_migrated');
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');
delete_option('doofinder_for_wp_notices');
delete_site_option('doofinder_for_wp_notices');
delete_option('doofinder_for_wp_show_once_notices');
delete_site_option('doofinder_for_wp_show_once_notices');
delete_option('doofinder_for_wp_token');
delete_site_option('doofinder_for_wp_token');
delete_option('woocommerce_doofinder_internal_search_api_key');
delete_site_option('woocommerce_doofinder_internal_search_api_key');
delete_option('doofinder_for_wp_api_host');
delete_site_option('doofinder_for_wp_api_host');
delete_option('doofinder_wizard_errors');
delete_site_option('doofinder_wizard_errors');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_w' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_h' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_doofinder_feed_attributes_additional_attributes');
delete_site_option('woocommerce_doofinder_feed_attributes_additional_attributes');
delete_option('doofinder_update_on_save_last_exec');
delete_site_option('doofinder_update_on_save_last_exec');
delete_option('doofinder_for_wp_api_key');
delete_site_option('doofinder_for_wp_api_key');
delete_option('doofinder_for_wp_region');
delete_site_option('doofinder_for_wp_region');
delete_option('doofinder_for_wp_dooplugins_host');
delete_site_option('doofinder_for_wp_dooplugins_host');
delete_option('doofinder_for_wp_update_on_save');
delete_site_option('doofinder_for_wp_update_on_save');
delete_option('doofinder_for_wp_enable_js_layer');
delete_site_option('doofinder_for_wp_enable_js_layer');
delete_option('doofinder_for_wp_js_layer');
delete_site_option('doofinder_for_wp_js_layer');
delete_option('doofinder_sector');
delete_site_option('doofinder_sector');
delete_option('doofinder_for_wp_plugin_version');
delete_site_option('doofinder_for_wp_plugin_version');
delete_option('doofinder_for_wp_plugin_update_running');
delete_site_option('doofinder_for_wp_plugin_update_running');
delete_option('doofinder_for_wp_rewrite_rules_state');
delete_site_option('doofinder_for_wp_rewrite_rules_state');

// Delete Transients
delete_transient('df_product_rest_attributes');
delete_site_transient('df_product_rest_attributes');

// Clear Cron Jobs
wp_clear_scheduled_hook('doofinder_update_on_save');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_doofinder_for_wp_indexing_visibility' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_doofinder_for_wp_indexing_visibility' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_doofinder_for_wp_indexing_visibility' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_doofinder_for_wp_indexing_visibility' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_cog_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_cog_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_cog_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_cog_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_cog_cost_variable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_cog_cost_variable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_cog_cost_variable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_cog_cost_variable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_image_gallery' ) );

