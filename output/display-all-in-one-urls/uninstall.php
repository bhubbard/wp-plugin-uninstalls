<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('get_option');
delete_site_option('get_option');
delete_option('allow_permalinks');
delete_site_option('allow_permalinks');
delete_option('new_tab');
delete_site_option('new_tab');

