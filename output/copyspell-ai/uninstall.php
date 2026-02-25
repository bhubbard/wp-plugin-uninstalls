<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('copyspell-ai-license');
delete_site_option('copyspell-ai-license');
delete_option('copyspell_ai_license_status');
delete_site_option('copyspell_ai_license_status');
delete_option('copyspell_ai_db_version');
delete_site_option('copyspell_ai_db_version');
delete_option('copyspell_ai_options');
delete_site_option('copyspell_ai_options');
delete_option('copyspell_ai_signature');
delete_site_option('copyspell_ai_signature');
delete_option('woocommerce_settings');
delete_site_option('woocommerce_settings');
delete_option('csai_options');
delete_site_option('csai_options');
delete_option('csai_db_version');
delete_site_option('csai_db_version');

// Delete Transients
delete_transient('copyspell_verification_token');
delete_site_transient('copyspell_verification_token');

// Clear Cron Jobs
wp_clear_scheduled_hook('csai_job_watchdog');
wp_clear_scheduled_hook('copyspell_ai_daily_license_check');
wp_clear_scheduled_hook('copyspell_ai_cron_job');
wp_clear_scheduled_hook('copyspell_ai_cleanup_hook');
wp_clear_scheduled_hook('copyspell_ai_sync_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'copyspell_ai' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'copyspell_ai' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'copyspell_ai' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'copyspell_ai' ) );

