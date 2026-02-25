<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('akismet_strictness');
delete_site_option('akismet_strictness');
delete_option('bvAccounts');
delete_site_option('bvAccounts');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');
delete_option('classic-editor-allow-users');
delete_site_option('classic-editor-allow-users');
delete_option('rg_gforms_key');
delete_site_option('rg_gforms_key');
delete_option('rg_gforms_enable_akismet');
delete_site_option('rg_gforms_enable_akismet');
delete_option('limit_login_client_type');
delete_site_option('limit_login_client_type');
delete_option('limit_login_allowed_retries');
delete_site_option('limit_login_allowed_retries');
delete_option('limit_login_lockout_duration');
delete_site_option('limit_login_lockout_duration');
delete_option('limit_login_allowed_lockouts');
delete_site_option('limit_login_allowed_lockouts');
delete_option('limit_login_long_duration');
delete_site_option('limit_login_long_duration');
delete_option('limit_login_valid_duration');
delete_site_option('limit_login_valid_duration');
delete_option('limit_login_lockout_notify');
delete_site_option('limit_login_lockout_notify');
delete_option('limit_login_notify_email_after');
delete_site_option('limit_login_notify_email_after');
delete_option('limit_login_cookies');
delete_site_option('limit_login_cookies');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('wp-short-pixel-verifiedKey');
delete_site_option('wp-short-pixel-verifiedKey');
delete_option('wp-short-backup_images');
delete_site_option('wp-short-backup_images');
delete_option('wp-short-create-webp');
delete_site_option('wp-short-create-webp');
delete_option('wp-short-pixel-create-webp-markup');
delete_site_option('wp-short-pixel-create-webp-markup');
delete_option('wp-short-pixel-png2jpg');
delete_site_option('wp-short-pixel-png2jpg');
delete_option('wp-short-pixel-savedSpace');
delete_site_option('wp-short-pixel-savedSpace');
delete_option('wp-short-pixel-compression');
delete_site_option('wp-short-pixel-compression');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

