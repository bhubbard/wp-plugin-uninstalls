<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('EXPERTREC_MOCK_API');
delete_site_option('EXPERTREC_MOCK_API');
delete_option('expertrec_debug');
delete_site_option('expertrec_debug');
delete_option('expertrec_options');
delete_site_option('expertrec_options');
delete_option('expertrec_engine');
delete_site_option('expertrec_engine');
delete_option('expertrec_indexing_status');
delete_site_option('expertrec_indexing_status');
delete_option('EXPERTREC_DB_OPTIONS_BRAND_TAXONOMY');
delete_site_option('EXPERTREC_DB_OPTIONS_BRAND_TAXONOMY');
delete_option('expertrec_stop_indexing');
delete_site_option('expertrec_stop_indexing');
delete_option('expertrec_index_status');
delete_site_option('expertrec_index_status');
delete_option('EXPERTREC_DB_OPTIONS_INDEX_VARIANTS');
delete_site_option('EXPERTREC_DB_OPTIONS_INDEX_VARIANTS');
delete_option('EXPERTREC_DB_OPTIONS_COMMUNICATION_EMAIL');
delete_site_option('EXPERTREC_DB_OPTIONS_COMMUNICATION_EMAIL');
delete_option('EXPERTREC_DB_OPTIONS_COMMUNICATION_PHONE');
delete_site_option('EXPERTREC_DB_OPTIONS_COMMUNICATION_PHONE');
delete_option('EXPERTREC_DB_OPTIONS_INIT');
delete_site_option('EXPERTREC_DB_OPTIONS_INIT');
delete_option('EXPERTREC_DB_OPTIONS_AI_UI_ENABLED');
delete_site_option('EXPERTREC_DB_OPTIONS_AI_UI_ENABLED');
delete_option('EXPERTREC_DB_OPTIONS_READONLY_MODE');
delete_site_option('EXPERTREC_DB_OPTIONS_READONLY_MODE');
delete_option('EXPERTREC_DB_OPTIONS_LOGGING_ENABLED');
delete_site_option('EXPERTREC_DB_OPTIONS_LOGGING_ENABLED');
delete_option('EXPERTREC_DB_OPTIONS_API_LOGGING_ENABLED');
delete_site_option('EXPERTREC_DB_OPTIONS_API_LOGGING_ENABLED');
delete_option('expertrec_plugin_do_activation_redirect');
delete_site_option('expertrec_plugin_do_activation_redirect');
delete_option('expertrec_debug_url');
delete_site_option('expertrec_debug_url');
delete_option('expertrec_options_RO');
delete_site_option('expertrec_options_RO');
delete_option('exp_ai_ui_enabled');
delete_site_option('exp_ai_ui_enabled');
delete_option('exp_api_logging_enabled');
delete_site_option('exp_api_logging_enabled');
delete_option('exp_brand_taxonomy');
delete_site_option('exp_brand_taxonomy');
delete_option('exp_index_variants');
delete_site_option('exp_index_variants');
delete_option('exp_init');
delete_site_option('exp_init');
delete_option('exp_last_successful_sync');
delete_site_option('exp_last_successful_sync');
delete_option('exp_meta_keys');
delete_site_option('exp_meta_keys');
delete_option('exp_readonly_mode');
delete_site_option('exp_readonly_mode');
delete_option('exp_selected_doc_types');
delete_site_option('exp_selected_doc_types');
delete_option('exp_sentry_enabled');
delete_site_option('exp_sentry_enabled');
delete_option('exp_logging_enabled');
delete_site_option('exp_logging_enabled');
delete_option('exp_subsequent_updates');
delete_site_option('exp_subsequent_updates');
delete_option('exp_woocommerce_product_attributes');
delete_site_option('exp_woocommerce_product_attributes');

// Delete Transients
delete_transient('exp_wc_attribute_taxonomies');
delete_site_transient('exp_wc_attribute_taxonomies');
delete_transient('exp_meta_keys');
delete_site_transient('exp_meta_keys');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );

