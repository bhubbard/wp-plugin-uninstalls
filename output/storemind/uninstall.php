<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('storemind_hand_offs_count');
delete_site_option('storemind_hand_offs_count');
delete_option('storemind_database_options');
delete_site_option('storemind_database_options');
delete_option('storemind_configuration_options');
delete_site_option('storemind_configuration_options');
delete_option('storemind_appearance_options');
delete_site_option('storemind_appearance_options');
delete_option('storemind_handoffs_options');
delete_site_option('storemind_handoffs_options');
delete_option('storemind_usermessages_options');
delete_site_option('storemind_usermessages_options');
delete_option('storemind_anymind_unique_id');
delete_site_option('storemind_anymind_unique_id');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('storemind_on_trial');
delete_site_option('storemind_on_trial');
delete_option('storemind_subscription_level');
delete_site_option('storemind_subscription_level');
delete_option('storemind_anymind_unique_chat_id');
delete_site_option('storemind_anymind_unique_chat_id');
delete_option('storemind_saved_site_url');
delete_site_option('storemind_saved_site_url');
delete_option('storemind_saved_site_name');
delete_site_option('storemind_saved_site_name');
delete_option('storemind_saved_currency');
delete_site_option('storemind_saved_currency');
delete_option('storemind_saved_weight_unit');
delete_site_option('storemind_saved_weight_unit');
delete_option('storemind_saved_dimensions_unit');
delete_site_option('storemind_saved_dimensions_unit');
delete_option('storemind_active_license');
delete_site_option('storemind_active_license');
delete_option('storemind_version');
delete_site_option('storemind_version');
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');
delete_option('woocommerce_coming_soon');
delete_site_option('woocommerce_coming_soon');
delete_option('woocommerce_site_visibility');
delete_site_option('woocommerce_site_visibility');
delete_option('woocommerce_coming_soon_scope');
delete_site_option('woocommerce_coming_soon_scope');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wapf_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wapf_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wapf_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wapf_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wapf_fieldgroup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wapf_fieldgroup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wapf_fieldgroup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wapf_fieldgroup' ) );

