<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('movelogin_scan_phpversion');
delete_site_option('movelogin_scan_phpversion');
delete_option('sfml');
delete_site_option('sfml');
delete_option('registration');
delete_site_option('registration');
delete_option('movelogin_users-login_settings');
delete_site_option('movelogin_users-login_settings');
delete_option('movelogin_settings');
delete_site_option('movelogin_settings');
delete_option('movelogin_active_submodule_move-login');
delete_site_option('movelogin_active_submodule_move-login');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'movelogin_active_submodule_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_movelogin_unlock_admin_key-%', '_site_transient_movelogin_unlock_admin_key-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('settings_errors');
delete_site_transient('settings_errors');
delete_transient('movelogin_updates_message');
delete_site_transient('movelogin_updates_message');
delete_transient('movelogin_is_https_supported');
delete_site_transient('movelogin_is_https_supported');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_movelogin_plugins_api_%', '_site_transient_movelogin_plugins_api_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_movelogin-notices-%', '_site_transient_movelogin-notices-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('movelogin_active_submodules');
delete_site_transient('movelogin_active_submodules');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'movelogin-bad-mx-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'movelogin-bad-mx-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'movelogin-bad-mx-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'movelogin-bad-mx-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'movelogin-blind-password' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'movelogin-blind-password' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'movelogin-blind-password' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'movelogin-blind-password' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'movelogin-password-needs-rehash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'movelogin-password-needs-rehash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'movelogin-password-needs-rehash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'movelogin-password-needs-rehash' ) );

