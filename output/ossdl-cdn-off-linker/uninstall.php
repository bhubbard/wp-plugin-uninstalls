<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ossdl_off_exclude');
delete_site_option('ossdl_off_exclude');
delete_option('ossdl_off_cdn_url');
delete_site_option('ossdl_off_cdn_url');
delete_option('ossdl_off_include_dirs');
delete_site_option('ossdl_off_include_dirs');
delete_option('ossdl_off_rootrelative');
delete_site_option('ossdl_off_rootrelative');

