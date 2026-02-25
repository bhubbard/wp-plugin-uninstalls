<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wptc-premium-extensions');
delete_site_option('wptc-premium-extensions');
delete_option('spamshield_options');
delete_site_option('spamshield_options');
delete_option('spamshield_whitelist_keys');
delete_site_option('spamshield_whitelist_keys');
delete_option('itsec-storage');
delete_site_option('itsec-storage');
delete_option('aio_wp_security_configs');
delete_site_option('aio_wp_security_configs');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_site_transient_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('spamshield_ubl_cache');
delete_site_option('spamshield_ubl_cache');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');
delete_option('auto_updater.lock');
delete_site_option('auto_updater.lock');
delete_option('_site_transient_update_core');
delete_site_option('_site_transient_update_core');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wptc-init-errors');
delete_site_option('wptc-init-errors');
delete_option('iwp_client_public_key');
delete_site_option('iwp_client_public_key');
delete_option('iwp_client_nossl_key');
delete_site_option('iwp_client_nossl_key');
delete_option('wptc_disable_sentry_lib');
delete_site_option('wptc_disable_sentry_lib');
delete_option('ftp_credentials');
delete_site_option('ftp_credentials');
delete_option('wptc_installed');
delete_site_option('wptc_installed');
delete_option('is_wptc_activation_redirected');
delete_site_option('is_wptc_activation_redirected');

// Delete Transients
delete_transient('dirsize_cache');
delete_site_transient('dirsize_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('wptc_trigger_truncate_cron_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_login_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_login_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_login_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_login_time' ) );

