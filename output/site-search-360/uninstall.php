<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ss360_siteId');
delete_site_option('ss360_siteId');
delete_option('ss360_api_token');
delete_site_option('ss360_api_token');
delete_option('ss360_pluginConfigId');
delete_site_option('ss360_pluginConfigId');
delete_option('ss360_category_filter_id');
delete_site_option('ss360_category_filter_id');
delete_option('ss360_tag_filter_id');
delete_site_option('ss360_tag_filter_id');
delete_option('ss360_data_points');
delete_site_option('ss360_data_points');
delete_option('ss360_renamed_dp');
delete_site_option('ss360_renamed_dp');
delete_option('ss360_inactive_dp');
delete_site_option('ss360_inactive_dp');
delete_option('ss360_acf_def');
delete_site_option('ss360_acf_def');
delete_option('ss360_indexing_mode');
delete_site_option('ss360_indexing_mode');
delete_option('ss360_woocommerce_categories');
delete_site_option('ss360_woocommerce_categories');
delete_option('ss360_price_filter_id');
delete_site_option('ss360_price_filter_id');
delete_option('ss360_woocommerce_filters');
delete_site_option('ss360_woocommerce_filters');
delete_option('ss360_sync_on_save');
delete_site_option('ss360_sync_on_save');
delete_option('ss360_sync_on_status');
delete_site_option('ss360_sync_on_status');
delete_option('ss360_sync_on_future');
delete_site_option('ss360_sync_on_future');
delete_option('ss360_sync_on_delete');
delete_site_option('ss360_sync_on_delete');
delete_option('ss360_review_interaction');
delete_site_option('ss360_review_interaction');
delete_option('ss360_selected_menus');
delete_site_option('ss360_selected_menus');
delete_option('ss360_plugin_version');
delete_site_option('ss360_plugin_version');
delete_option('ss360_sr_type');
delete_site_option('ss360_sr_type');
delete_option('ss360_account_created');
delete_site_option('ss360_account_created');
delete_option('ss360_is_configured');
delete_site_option('ss360_is_configured');
delete_option('ss360_is_indexed');
delete_site_option('ss360_is_indexed');
delete_option('ss360_old_indexing_notice');
delete_site_option('ss360_old_indexing_notice');
delete_option('ss360_password');
delete_site_option('ss360_password');
delete_option('ss360_installation_id');
delete_site_option('ss360_installation_id');
delete_option('ss360_last_upgrade_request_ts');
delete_site_option('ss360_last_upgrade_request_ts');
delete_option('ss360_config');
delete_site_option('ss360_config');
delete_option('ss360_callbacks');
delete_site_option('ss360_callbacks');
delete_option('ss360_page_limit');
delete_site_option('ss360_page_limit');
delete_option('ss360_rate_checker');
delete_site_option('ss360_rate_checker');
delete_option('ss360_active_plan');
delete_site_option('ss360_active_plan');
delete_option('ss360_inject_search');
delete_site_option('ss360_inject_search');
delete_option('ss360_config_modifications');
delete_site_option('ss360_config_modifications');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_attributes' ) );

