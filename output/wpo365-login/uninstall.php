<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpo365_active_extensions');
delete_site_option('wpo365_active_extensions');
delete_option('wpo365_options');
delete_site_option('wpo365_options');
delete_option('mail_integration_365_plugin_ops');
delete_site_option('mail_integration_365_plugin_ops');
delete_option('wpo365_insights_summary');
delete_site_option('wpo365_insights_summary');
delete_option('wpo365_current_insights_year');
delete_site_option('wpo365_current_insights_year');
delete_option('wpo365_mail_authorization');
delete_site_option('wpo365_mail_authorization');
delete_option('mail_integration_365_plugin_ops_access_token');
delete_site_option('mail_integration_365_plugin_ops_access_token');
delete_option('wpo365_msft_key');
delete_site_option('wpo365_msft_key');
delete_option('wpo365_x509_certificates');
delete_site_option('wpo365_x509_certificates');
delete_option('wpo_sync_v2_users_unscheduled');
delete_site_option('wpo_sync_v2_users_unscheduled');
delete_option('wpo365_wpmu_mode');
delete_site_option('wpo365_wpmu_mode');
delete_option('wpo365_msft_keys');
delete_site_option('wpo365_msft_keys');
delete_option('wpo365_nonces');
delete_site_option('wpo365_nonces');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('wpo365_plugins_updated');
delete_site_transient('wpo365_plugins_updated');
delete_transient('wpo365_secrets_expiration_hook_ensured');
delete_site_transient('wpo365_secrets_expiration_hook_ensured');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpo_process_unsent_messages');
wp_clear_scheduled_hook('wpo_check_password_credentials_expiration');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'primary_blog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'primary_blog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'primary_blog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'primary_blog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'userPrincipalName' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'userPrincipalName' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'userPrincipalName' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'userPrincipalName' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'aadTenantId' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'aadTenantId' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'aadTenantId' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'aadTenantId' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpo365_idp_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpo365_idp_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpo365_idp_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpo365_idp_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'aadObjectId' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'aadObjectId' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'aadObjectId' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'aadObjectId' ) );

