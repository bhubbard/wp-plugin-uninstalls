<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpclone_backups');
delete_site_option('wpclone_backups');
delete_option('wpclone_directory_scan');
delete_site_option('wpclone_directory_scan');
delete_option('wpa_wpc_plugin_do_activation_redirect');
delete_site_option('wpa_wpc_plugin_do_activation_redirect');
delete_option('wpa_activation_redirect_required');
delete_site_option('wpa_activation_redirect_required');

