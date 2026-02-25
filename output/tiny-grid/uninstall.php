<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('load_front');
delete_site_option('load_front');
delete_option('version');
delete_site_option('version');

