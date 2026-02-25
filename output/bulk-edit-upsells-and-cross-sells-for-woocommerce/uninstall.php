<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('beucw_api_request_created_status');
delete_site_option('beucw_api_request_created_status');
delete_option('beucw_ai_default_check');
delete_site_option('beucw_ai_default_check');
delete_option('beucw_default_ai_prompt');
delete_site_option('beucw_default_ai_prompt');
delete_option('beucw_all_products');
delete_site_option('beucw_all_products');
delete_option('beucw_products_name');
delete_site_option('beucw_products_name');
delete_option('beucw_products_desc');
delete_site_option('beucw_products_desc');
delete_option('beucw_ai_prompt_type');
delete_site_option('beucw_ai_prompt_type');
delete_option('beucw_display_ai_request_notice');
delete_site_option('beucw_display_ai_request_notice');
delete_option('beucw_api_valid_key_status');
delete_site_option('beucw_api_valid_key_status');
delete_option('beucw_prompt_request_button_hit');
delete_site_option('beucw_prompt_request_button_hit');
delete_option('beucw_api_error_data');
delete_site_option('beucw_api_error_data');
delete_option('beucw_product_selected_options');
delete_site_option('beucw_product_selected_options');
delete_option('beucw_about_store');
delete_site_option('beucw_about_store');
delete_option('beucw_product_list');
delete_site_option('beucw_product_list');
delete_option('test');
delete_site_option('test');
delete_option('beucw_openai_api_key');
delete_site_option('beucw_openai_api_key');
delete_option('beucw_api_model_name');
delete_site_option('beucw_api_model_name');
delete_option('beucw_current_ai_request');
delete_site_option('beucw_current_ai_request');
delete_option('beucw_tokens_used');
delete_site_option('beucw_tokens_used');
delete_option('beucw_ai_request_logs');
delete_site_option('beucw_ai_request_logs');
delete_option('response_ai');
delete_site_option('response_ai');
delete_option('beucw_last_notice');
delete_site_option('beucw_last_notice');
delete_option('beucw_latest_popup_sale_notice');
delete_site_option('beucw_latest_popup_sale_notice');
delete_option('beucw_ai_request_prompt');
delete_site_option('beucw_ai_request_prompt');
delete_option('samit_test_taxonomy_start');
delete_site_option('samit_test_taxonomy_start');
delete_option('beucw_api_usage_status');
delete_site_option('beucw_api_usage_status');
delete_option('beucw_openai_api_model');
delete_site_option('beucw_openai_api_model');

// Delete Transients
delete_transient('beucw_set_model_names');
delete_site_transient('beucw_set_model_names');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'beucw_latest_version_read_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'beucw_latest_version_read_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'beucw_latest_version_read_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'beucw_latest_version_read_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'related_products_individual_select' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'related_products_individual_select' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'related_products_individual_select' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'related_products_individual_select' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'beucw_rate_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'beucw_rate_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'beucw_rate_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'beucw_rate_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'beucw_notices_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'beucw_notices_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'beucw_notices_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'beucw_notices_time' ) );

