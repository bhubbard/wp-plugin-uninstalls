<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('backwpup_cfg_logfolder');
delete_site_option('backwpup_cfg_logfolder');
delete_option('site_admins');
delete_site_option('site_admins');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('gd_system_last_cache_flush');
delete_site_option('gd_system_last_cache_flush');
delete_option('duplicator_exe_safe_mode');
delete_site_option('duplicator_exe_safe_mode');

