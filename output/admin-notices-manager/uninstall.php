<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('anm_update_notice_needed');
delete_site_option('anm_update_notice_needed');
delete_option('anm_active_version');
delete_site_option('anm_active_version');
delete_option('anm_settings');
delete_site_option('anm_settings');
delete_option('anm-plugin-installed-by-user-id');
delete_site_option('anm-plugin-installed-by-user-id');

