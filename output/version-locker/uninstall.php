<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vlocker_audit_log');
delete_site_option('vlocker_audit_log');
delete_option('vlocker_keep_settings_on_delete');
delete_site_option('vlocker_keep_settings_on_delete');

// Delete Transients
delete_transient('vlocker_is_multi_admin');
delete_site_transient('vlocker_is_multi_admin');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('vlocker_update_blocked');
delete_site_transient('vlocker_update_blocked');

