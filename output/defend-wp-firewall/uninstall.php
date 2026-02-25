<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');
delete_option('ms_files_rewriting');
delete_site_option('ms_files_rewriting');

// Delete Transients
delete_transient('defend_wp_firewall_setting_redirect_on_activation');
delete_site_transient('defend_wp_firewall_setting_redirect_on_activation');
delete_transient('defend_wp_firewall_error_notice');
delete_site_transient('defend_wp_firewall_error_notice');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('defend_wp_firewall_defendwp_pro_not_min_version');
delete_site_transient('defend_wp_firewall_defendwp_pro_not_min_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('defend_wp_firewall_daily_auto_update');
wp_clear_scheduled_hook('defend_wp_firewall_index_write');
wp_clear_scheduled_hook('defend_wp_firewall_cron_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dwp_iwp_auto_login_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dwp_iwp_auto_login_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dwp_iwp_auto_login_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dwp_iwp_auto_login_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rsssl_two_factor_nonce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rsssl_two_factor_nonce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rsssl_two_factor_nonce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rsssl_two_factor_nonce' ) );

