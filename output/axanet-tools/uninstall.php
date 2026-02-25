<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('axanet_disable_admin_bar_non_admins');
delete_site_option('axanet_disable_admin_bar_non_admins');
delete_option('axanet_disable_comments');
delete_site_option('axanet_disable_comments');
delete_option('axanet_login_logo_url');
delete_site_option('axanet_login_logo_url');
delete_option('axanet_login_logo_width');
delete_site_option('axanet_login_logo_width');
delete_option('axanet_login_logo_height');
delete_site_option('axanet_login_logo_height');
delete_option('axanet_login_background_color');
delete_site_option('axanet_login_background_color');
delete_option('axanet_login_security_settings');
delete_site_option('axanet_login_security_settings');
delete_option('axanet_login_security_enabled');
delete_site_option('axanet_login_security_enabled');
delete_option('axanet_blocked_ips');
delete_site_option('axanet_blocked_ips');
delete_option('axanet_maintenance_settings');
delete_site_option('axanet_maintenance_settings');
delete_option('axanet_tools_settings');
delete_site_option('axanet_tools_settings');
delete_option('axanet_search_replace_settings');
delete_site_option('axanet_search_replace_settings');

// Delete Transients
delete_transient('axanet_tools_transient');
delete_site_transient('axanet_tools_transient');

