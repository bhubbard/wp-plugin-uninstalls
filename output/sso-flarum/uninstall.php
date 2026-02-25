<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'flarum_sso_plugin_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('flarum_sso_plugin_version');
delete_site_option('flarum_sso_plugin_version');
delete_option('flarum_sso_plugin_insecure');
delete_site_option('flarum_sso_plugin_insecure');
delete_option('flarum_sso_plugin_verify_ssl');
delete_site_option('flarum_sso_plugin_verify_ssl');
delete_option('flarum_sso_plugin_flarum_url');
delete_site_option('flarum_sso_plugin_flarum_url');
delete_option('flarum_sso_plugin_api_key');
delete_site_option('flarum_sso_plugin_api_key');
delete_option('flarum_sso_plugin_verify_ssl_cert_path');
delete_site_option('flarum_sso_plugin_verify_ssl_cert_path');
delete_option('flarum_sso_plugin_root_domain');
delete_site_option('flarum_sso_plugin_root_domain');
delete_option('flarum_sso_plugin_password_token');
delete_site_option('flarum_sso_plugin_password_token');
delete_option('flarum_sso_plugin_memberpress_addon_set_groups_admins');
delete_site_option('flarum_sso_plugin_memberpress_addon_set_groups_admins');
delete_option('flarum_sso_plugin_update_user_avatar');
delete_site_option('flarum_sso_plugin_update_user_avatar');
delete_option('flarum_sso_plugin_active');
delete_site_option('flarum_sso_plugin_active');

