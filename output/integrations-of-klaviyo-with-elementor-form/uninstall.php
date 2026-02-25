<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iklaviyoef_app_conf');
delete_site_option('iklaviyoef_app_conf');
delete_option('iklaviyoef_db_version');
delete_site_option('iklaviyoef_db_version');
delete_option('iklaviyoef_installed');
delete_site_option('iklaviyoef_installed');
delete_option('iklaviyoef_version');
delete_site_option('iklaviyoef_version');

