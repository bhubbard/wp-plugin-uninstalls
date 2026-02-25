<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('n360_version_cookie');
delete_site_option('n360_version_cookie');
delete_option('n360_config');
delete_site_option('n360_config');

