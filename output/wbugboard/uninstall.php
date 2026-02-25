<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wbbd_general_settings');
delete_site_option('wbbd_general_settings');
delete_option('wbbd_allowed_roles');
delete_site_option('wbbd_allowed_roles');
delete_option('wbbd_email_settings');
delete_site_option('wbbd_email_settings');
delete_option('wbbd_team_users');
delete_site_option('wbbd_team_users');

