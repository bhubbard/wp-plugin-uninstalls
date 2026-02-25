<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scdc_notifier_enabled');
delete_site_option('scdc_notifier_enabled');
delete_option('scdc_api_key');
delete_site_option('scdc_api_key');
delete_option('scdc_webhook_url');
delete_site_option('scdc_webhook_url');
delete_option('scdc_embed_color');
delete_site_option('scdc_embed_color');
delete_option('scdc_show_detailed_order_info');
delete_site_option('scdc_show_detailed_order_info');
delete_option('scdc_discord_public_key');
delete_site_option('scdc_discord_public_key');
delete_option('scdc_bot_token');
delete_site_option('scdc_bot_token');
delete_option('scdc_channel_id');
delete_site_option('scdc_channel_id');
delete_option('scdc_status_management_enabled');
delete_site_option('scdc_status_management_enabled');
delete_option('scdc_thread_enabled');
delete_site_option('scdc_thread_enabled');
delete_option('scdc_custom_webhook_enabled');
delete_site_option('scdc_custom_webhook_enabled');
delete_option('scdc_custom_webhook_path');
delete_site_option('scdc_custom_webhook_path');
delete_option('scdc_transient_duration');
delete_site_option('scdc_transient_duration');
delete_option('scdc_do_redirect');
delete_site_option('scdc_do_redirect');
delete_option('syncpa_scdc_pro_license_status');
delete_site_option('syncpa_scdc_pro_license_status');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_scdc_last_event_%', '_site_transient_scdc_last_event_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('scdc_evt_cleanup');
wp_clear_scheduled_hook('scdc_delayed_webhooks_update');

