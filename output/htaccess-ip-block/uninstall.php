<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('HTACCESS_IP_BLOCK_FILE_MAP_NAME');
delete_site_option('HTACCESS_IP_BLOCK_FILE_MAP_NAME');
delete_option('my_option_name');
delete_site_option('my_option_name');

