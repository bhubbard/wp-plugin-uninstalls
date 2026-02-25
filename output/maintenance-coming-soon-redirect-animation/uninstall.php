<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wploti_maintenance_redirect_version');
delete_site_option('wploti_maintenance_redirect_version');
delete_option('wploti_activation_notice');
delete_site_option('wploti_activation_notice');
delete_option('wploti_animation');
delete_site_option('wploti_animation');
delete_option('wploti_status');
delete_site_option('wploti_status');
delete_option('wploti_notes_notice');
delete_site_option('wploti_notes_notice');
delete_option('wploti_message');
delete_site_option('wploti_message');
delete_option('wploti_header_type');
delete_site_option('wploti_header_type');
delete_option('wploti_whitelisted_roles');
delete_site_option('wploti_whitelisted_roles');
delete_option('wploti_whitelisted_users');
delete_site_option('wploti_whitelisted_users');
delete_option('wploti_upload_animation');
delete_site_option('wploti_upload_animation');

