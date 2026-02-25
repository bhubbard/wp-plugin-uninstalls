<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shibboleth_attribute_access_method');
delete_site_option('shibboleth_attribute_access_method');
delete_option('shibboleth_attribute_access_method_fallback');
delete_site_option('shibboleth_attribute_access_method_fallback');
delete_option('shibboleth_attribute_custom_access_method');
delete_site_option('shibboleth_attribute_custom_access_method');
delete_option('shibboleth_login_url');
delete_site_option('shibboleth_login_url');
delete_option('shibboleth_logout_url');
delete_site_option('shibboleth_logout_url');
delete_option('shibboleth_spoof_key');
delete_site_option('shibboleth_spoof_key');
delete_option('shibboleth_default_to_shib_login');
delete_site_option('shibboleth_default_to_shib_login');
delete_option('shibboleth_auto_login');
delete_site_option('shibboleth_auto_login');
delete_option('shibboleth_disable_local_auth');
delete_site_option('shibboleth_disable_local_auth');
delete_option('shibboleth_idps');
delete_site_option('shibboleth_idps');
delete_option('shibboleth_headers');
delete_site_option('shibboleth_headers');
delete_option('shibboleth_create_accounts');
delete_site_option('shibboleth_create_accounts');
delete_option('shibboleth_auto_combine_accounts');
delete_site_option('shibboleth_auto_combine_accounts');
delete_option('shibboleth_manually_combine_accounts');
delete_site_option('shibboleth_manually_combine_accounts');
delete_option('shibboleth_roles');
delete_site_option('shibboleth_roles');
delete_option('shibboleth_default_role');
delete_site_option('shibboleth_default_role');
delete_option('shibboleth_update_roles');
delete_site_option('shibboleth_update_roles');
delete_option('shibboleth_logging');
delete_site_option('shibboleth_logging');
delete_option('shibboleth_plugin_version');
delete_site_option('shibboleth_plugin_version');
delete_option('shibboleth_update_users');
delete_site_option('shibboleth_update_users');
delete_option('shibboleth_plugin_revision');
delete_site_option('shibboleth_plugin_revision');
delete_option('shibboleth_attribute_access');
delete_site_option('shibboleth_attribute_access');
delete_option('shibboleth_spoofkey');
delete_site_option('shibboleth_spoofkey');
delete_option('shibboleth_default_login');
delete_site_option('shibboleth_default_login');
delete_option('shibboleth_button_text');
delete_site_option('shibboleth_button_text');
delete_option('shibboleth_password_change_url');
delete_site_option('shibboleth_password_change_url');
delete_option('shibboleth_password_reset_url');
delete_site_option('shibboleth_password_reset_url');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shibboleth_account' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shibboleth_account' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shibboleth_account' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shibboleth_account' ) );

