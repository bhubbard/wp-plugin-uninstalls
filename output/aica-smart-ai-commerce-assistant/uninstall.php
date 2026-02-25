<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aica_settings');
delete_site_option('aica_settings');
delete_option('aica_magic_prompts');
delete_site_option('aica_magic_prompts');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('woocommerce_price_thousand_sep');
delete_site_option('woocommerce_price_thousand_sep');
delete_option('woocommerce_price_decimal_sep');
delete_site_option('woocommerce_price_decimal_sep');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('aica_installed');
delete_site_option('aica_installed');
delete_option('aica_version');
delete_site_option('aica_version');
delete_option('aica_activated');
delete_site_option('aica_activated');
delete_option('aica_onboarding_completed');
delete_site_option('aica_onboarding_completed');
delete_option('aica_last_indexed');
delete_site_option('aica_last_indexed');
delete_option('aica_system_prompts');
delete_site_option('aica_system_prompts');
delete_option('aica_db_version');
delete_site_option('aica_db_version');

// Delete Transients
delete_transient('aica_activation_redirect');
delete_site_transient('aica_activation_redirect');
delete_transient('aica_indexing_progress');
delete_site_transient('aica_indexing_progress');
delete_transient('aica_product_count');
delete_site_transient('aica_product_count');
delete_transient('aica_last_index_time');
delete_site_transient('aica_last_index_time');

// Clear Cron Jobs
wp_clear_scheduled_hook('aica_reindex_products');
wp_clear_scheduled_hook('aica_cleanup_old_data');
wp_clear_scheduled_hook('aica_generate_embeddings');
wp_clear_scheduled_hook('aica_optimize_database');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aica_conversions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aica_conversions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aica_conversions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aica_conversions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aica_conversion_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aica_conversion_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aica_conversion_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aica_conversion_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'aica_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'aica_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'aica_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'aica_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'aica_onboarding_complete' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'aica_onboarding_complete' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'aica_onboarding_complete' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'aica_onboarding_complete' ) );

