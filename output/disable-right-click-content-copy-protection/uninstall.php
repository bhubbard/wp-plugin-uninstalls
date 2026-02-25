<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('drccp_settings');
delete_site_option('drccp_settings');
delete_option('drccp_admin_notice_dismissed');
delete_site_option('drccp_admin_notice_dismissed');
delete_option('drccp_custom_menu_settings');
delete_site_option('drccp_custom_menu_settings');

