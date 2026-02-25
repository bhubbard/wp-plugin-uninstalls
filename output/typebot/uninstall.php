<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lib_version');
delete_site_option('lib_version');
delete_option('init_snippet');
delete_site_option('init_snippet');
delete_option('excluded_pages');
delete_site_option('excluded_pages');

