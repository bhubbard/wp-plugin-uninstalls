<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ow_username');
delete_site_option('ow_username');
delete_option('ow_password');
delete_site_option('ow_password');
delete_option('ow_autopost');
delete_site_option('ow_autopost');
delete_option('ow_service_logins');
delete_site_option('ow_service_logins');

