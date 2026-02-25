<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('everest_backup_enable_plugin_token');
delete_site_option('everest_backup_enable_plugin_token');
delete_option('everest_backup_consent_optin');
delete_site_option('everest_backup_consent_optin');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('woocommerce_permalinks');
delete_site_option('woocommerce_permalinks');
delete_option('_elementor_global_css');
delete_site_option('_elementor_global_css');
delete_option('elementor-custom-breakpoints-files');
delete_site_option('elementor-custom-breakpoints-files');
delete_option('everest_backup_ajax_manual_nonce');
delete_site_option('everest_backup_ajax_manual_nonce');
delete_option('everest_backup_active_plugins');
delete_site_option('everest_backup_active_plugins');

// Delete Transients
delete_transient('is_restore_completed');
delete_site_transient('is_restore_completed');
delete_transient('everest_backup_consent_skip');
delete_site_transient('everest_backup_consent_skip');
delete_transient('everest_backup_wp_cli_express');
delete_site_transient('everest_backup_wp_cli_express');
delete_transient('everest_backup_doing_scheduled_backup');
delete_site_transient('everest_backup_doing_scheduled_backup');
delete_transient('everest_backup_migrate_clone_download');
delete_site_transient('everest_backup_migrate_clone_download');
delete_transient('eb_post_restore_token');
delete_site_transient('eb_post_restore_token');
delete_transient('everest_backup_migrate_clone_download_retry');
delete_site_transient('everest_backup_migrate_clone_download_retry');
delete_transient('everest_backup_2fa_checked');
delete_site_transient('everest_backup_2fa_checked');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'session_tokens' ) );

