<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bf_sfd_max_file_size');
delete_site_option('bf_sfd_max_file_size');
delete_option('bf_sfd_allow_editor_admin');
delete_site_option('bf_sfd_allow_editor_admin');
delete_option('bf_sfd_directory_auths');
delete_site_option('bf_sfd_directory_auths');
delete_option('bf_sfd_auth_settings_changed');
delete_site_option('bf_sfd_auth_settings_changed');
delete_option('bf_sfd_directory_passwords');
delete_site_option('bf_sfd_directory_passwords');
delete_option('bf_sfd_auth_methods');
delete_site_option('bf_sfd_auth_methods');
delete_option('bf_sfd_allowed_roles');
delete_site_option('bf_sfd_allowed_roles');
delete_option('bf_sfd_simple_auth_password');
delete_site_option('bf_sfd_simple_auth_password');
delete_option('bf_sfd_auth_timeout');
delete_site_option('bf_sfd_auth_timeout');
delete_option('bf_sfd_menu_title');
delete_site_option('bf_sfd_menu_title');
delete_option('bf_sfd_enable_auth');
delete_site_option('bf_sfd_enable_auth');
delete_option('bf_sfd_log_downloads');
delete_site_option('bf_sfd_log_downloads');
delete_option('bf_sfd_security_level');
delete_site_option('bf_sfd_security_level');
delete_option('bf_sfd_secure_directory_id');
delete_site_option('bf_sfd_secure_directory_id');
delete_option('bf_sfd_target_directory');
delete_site_option('bf_sfd_target_directory');
delete_option('bf_sfd_download_logs');
delete_site_option('bf_sfd_download_logs');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bf_sfd_download_%', '_site_transient_bf_sfd_download_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

