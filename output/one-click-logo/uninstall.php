<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ocl_url');
delete_site_option('ocl_url');
delete_option('ocl_installed');
delete_site_option('ocl_installed');
delete_option('ocl_version');
delete_site_option('ocl_version');

