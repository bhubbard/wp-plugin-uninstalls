<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('asc');
delete_site_option('asc');
delete_option('asc_version');
delete_site_option('asc_version');

