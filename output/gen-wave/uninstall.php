<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('genwave_encryption_key');
delete_site_option('genwave_encryption_key');
delete_option('genwave_tables_installed');
delete_site_option('genwave_tables_installed');
delete_option('genwave_installation_date');
delete_site_option('genwave_installation_date');
delete_option('genwave_admin_option');
delete_site_option('genwave_admin_option');
delete_option('genwave_token_balance');
delete_site_option('genwave_token_balance');
delete_option('genwave_rest_api_flushed_v2');
delete_site_option('genwave_rest_api_flushed_v2');
delete_option('genwave_mybusiness_settings');
delete_site_option('genwave_mybusiness_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'genwave_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('genwave_litellm_api_key');
delete_site_option('genwave_litellm_api_key');
delete_option('genwave_api_base_url');
delete_site_option('genwave_api_base_url');
delete_option('genwave_api_key');
delete_site_option('genwave_api_key');
delete_option('genwave_default_model');
delete_site_option('genwave_default_model');
delete_option('genwave_default_provider');
delete_site_option('genwave_default_provider');
delete_option('genwave_rate_limit');
delete_site_option('genwave_rate_limit');
delete_option('genwave_license_key');
delete_site_option('genwave_license_key');
delete_option('genwave_db_version');
delete_site_option('genwave_db_version');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('update_core');
delete_site_transient('update_core');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_short_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_short_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_short_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_short_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ai_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ai_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ai_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ai_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ai_source_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ai_source_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ai_source_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ai_source_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ai_generated_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ai_generated_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ai_generated_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ai_generated_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_genwave_generation_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_genwave_generation_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_genwave_generation_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_genwave_generation_method' ) );

