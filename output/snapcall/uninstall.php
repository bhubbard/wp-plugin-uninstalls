<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('snapcall_uid');
delete_site_option('snapcall_uid');
delete_option('snapcall_api_key');
delete_site_option('snapcall_api_key');
delete_option('snapcall_api_secret');
delete_site_option('snapcall_api_secret');
delete_option('snapcall_db_version');
delete_site_option('snapcall_db_version');

