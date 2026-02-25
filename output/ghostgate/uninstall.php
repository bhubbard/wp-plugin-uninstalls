<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ghostgate_json_allowed_routes');
delete_site_option('ghostgate_json_allowed_routes');
delete_option('ghostgate_json_allowed_prefixes');
delete_site_option('ghostgate_json_allowed_prefixes');
delete_option('ghostgate_hide_json_endpoints');
delete_site_option('ghostgate_hide_json_endpoints');
delete_option('ghostgate_login_slug');
delete_site_option('ghostgate_login_slug');
delete_option('ghostgate_enable_login_slug');
delete_site_option('ghostgate_enable_login_slug');
delete_option('ghostgate_code_length');
delete_site_option('ghostgate_code_length');
delete_option('ghostgate_enable_code_length');
delete_site_option('ghostgate_enable_code_length');
delete_option('ghostgate_code_mode');
delete_site_option('ghostgate_code_mode');
delete_option('ghostgate_enable_code_mode');
delete_site_option('ghostgate_enable_code_mode');
delete_option('ghostgate_custom_code');
delete_site_option('ghostgate_custom_code');
delete_option('ghostgate_enable_2fa');
delete_site_option('ghostgate_enable_2fa');
delete_option('ghostgate_ajax_limit');
delete_site_option('ghostgate_ajax_limit');
delete_option('ghostgate_ajax_cooldown');
delete_site_option('ghostgate_ajax_cooldown');
delete_option('ghostgate_enable_ajax_limit');
delete_site_option('ghostgate_enable_ajax_limit');
delete_option('ghostgate_ajax_notify');
delete_site_option('ghostgate_ajax_notify');
delete_option('ghostgate_log_file_path');
delete_site_option('ghostgate_log_file_path');
delete_option('ghostgate_enable_log_file');
delete_site_option('ghostgate_enable_log_file');
delete_option('ghostgate_log_retention_days');
delete_site_option('ghostgate_log_retention_days');
delete_option('ghostgate_enable_login_limit');
delete_site_option('ghostgate_enable_login_limit');
delete_option('ghostgate_login_attempt_limit');
delete_site_option('ghostgate_login_attempt_limit');
delete_option('ghostgate_notify_on_block');
delete_site_option('ghostgate_notify_on_block');
delete_option('ghostgate_login_block_cooldown');
delete_site_option('ghostgate_login_block_cooldown');
delete_option('ghostgate_block_author_enum');
delete_site_option('ghostgate_block_author_enum');
delete_option('ghostgate_disable_xmlrpc');
delete_site_option('ghostgate_disable_xmlrpc');
delete_option('ghostgate_block_unused_rest');
delete_site_option('ghostgate_block_unused_rest');
delete_option('ghostgate_enable_rest_limit');
delete_site_option('ghostgate_enable_rest_limit');
delete_option('ghostgate_rest_limit_count');
delete_site_option('ghostgate_rest_limit_count');
delete_option('ghostgate_rest_limit_cooldown');
delete_site_option('ghostgate_rest_limit_cooldown');
delete_option('ghostgate_enable_session_control');
delete_site_option('ghostgate_enable_session_control');
delete_option('ghostgate_session_timeout');
delete_site_option('ghostgate_session_timeout');
delete_option('ghostgate_block_preview');
delete_site_option('ghostgate_block_preview');
delete_option('ghostgate_block_index');
delete_site_option('ghostgate_block_index');
delete_option('ghostgate_session_grace_until');
delete_site_option('ghostgate_session_grace_until');
delete_option('ghostgate_session_interval');
delete_site_option('ghostgate_session_interval');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mo_2fa_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mo_2fa_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mo_2fa_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mo_2fa_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wfls_twoFactorStatus' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wfls_twoFactorStatus' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wfls_twoFactorStatus' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wfls_twoFactorStatus' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ghostgate_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ghostgate_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ghostgate_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ghostgate_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ghostgate_enable_2fa' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ghostgate_enable_2fa' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ghostgate_enable_2fa' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ghostgate_enable_2fa' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ghostgate_2fa_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ghostgate_2fa_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ghostgate_2fa_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ghostgate_2fa_verified' ) );

