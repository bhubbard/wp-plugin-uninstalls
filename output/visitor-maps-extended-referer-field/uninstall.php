<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vmerf_version');
delete_site_option('vmerf_version');
delete_option('vmerf_htaccess');
delete_site_option('vmerf_htaccess');
delete_option('vmerf_htaccess_warning');
delete_site_option('vmerf_htaccess_warning');
delete_option('vmerf_banned_ips');
delete_site_option('vmerf_banned_ips');
delete_option('vmerf_banned_referers');
delete_site_option('vmerf_banned_referers');
delete_option('vmerf_auto_update');
delete_site_option('vmerf_auto_update');
delete_option('vmerf_auto_update_time');
delete_site_option('vmerf_auto_update_time');
delete_option('vmerf_referers');
delete_site_option('vmerf_referers');
delete_option('vmerf_htbackup');
delete_site_option('vmerf_htbackup');
delete_option('vmerf_wp_version');
delete_site_option('vmerf_wp_version');
delete_option('vmerf_settings');
delete_site_option('vmerf_settings');

