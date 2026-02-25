<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aesirx_analytics_plugin_options');
delete_site_option('aesirx_analytics_plugin_options');
delete_option('aesirx_consent_verify_plugin_options');
delete_site_option('aesirx_consent_verify_plugin_options');
delete_option('aesirx_consent_modal_plugin_options');
delete_site_option('aesirx_consent_modal_plugin_options');
delete_option('aesirx_consent_gpc_plugin_options');
delete_site_option('aesirx_consent_gpc_plugin_options');
delete_option('aesirx_consent_geo_plugin_options');
delete_site_option('aesirx_consent_geo_plugin_options');
delete_option('aesirx_analytics_do_activation_redirect');
delete_site_option('aesirx_analytics_do_activation_redirect');
delete_option('aesirx_analytics_plugin_options_disabled_block_domains');
delete_site_option('aesirx_analytics_plugin_options_disabled_block_domains');
delete_option('aesirx_consent_ai_plugin_options');
delete_site_option('aesirx_consent_ai_plugin_options');
delete_option('aesirx_privacy_policy_url');
delete_site_option('aesirx_privacy_policy_url');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%]' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('aesirx_analytics_flow_uuid');
delete_site_transient('aesirx_analytics_flow_uuid');
delete_transient('aesirx_analytics_update_notice');
delete_site_transient('aesirx_analytics_update_notice');
delete_transient('aesirx_consent_pro_upsell_notice');
delete_site_transient('aesirx_consent_pro_upsell_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('analytics_cron_geo');

