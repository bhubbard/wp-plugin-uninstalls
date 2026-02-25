<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mcpner_llmstxt_settings');
delete_site_option('mcpner_llmstxt_settings');
delete_option('mcpner_llmstxt_content_selection');
delete_site_option('mcpner_llmstxt_content_selection');
delete_option('mcpner_llmstxt_exclusions');
delete_site_option('mcpner_llmstxt_exclusions');
delete_option('mcpner_llmstxt_integration_settings');
delete_site_option('mcpner_llmstxt_integration_settings');
delete_option('llms_txt_settings');
delete_site_option('llms_txt_settings');
delete_option('llms_txt_webhook_settings');
delete_site_option('llms_txt_webhook_settings');
delete_option('llms_txt_pro_installed');
delete_site_option('llms_txt_pro_installed');
delete_option('llms_txt_pro_version');
delete_site_option('llms_txt_pro_version');

// Delete Transients
delete_transient('mcpner_llmstxt_activation_error');
delete_site_transient('mcpner_llmstxt_activation_error');
delete_transient('mcpner_llmstxt_generation_result');
delete_site_transient('mcpner_llmstxt_generation_result');
delete_transient('llms_txt_license_valid');
delete_site_transient('llms_txt_license_valid');
delete_transient('mcpner_llmstxt_content');
delete_site_transient('mcpner_llmstxt_content');
delete_transient('mcpner_llmstxt_content_hash');
delete_site_transient('mcpner_llmstxt_content_hash');

// Clear Cron Jobs
wp_clear_scheduled_hook('mcpner_llmstxt_scheduled_regeneration');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mcpner_llmstxt_excluded' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mcpner_llmstxt_excluded' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mcpner_llmstxt_excluded' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mcpner_llmstxt_excluded' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aioseo_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aioseo_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aioseo_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aioseo_description' ) );

