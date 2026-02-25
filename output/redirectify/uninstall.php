<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('redirectify_db_version');
delete_site_option('redirectify_db_version');
delete_option('galleryify_db_version');
delete_site_option('galleryify_db_version');
delete_option('redirect_name');
delete_site_option('redirect_name');
delete_option('redirect_url');
delete_site_option('redirect_url');
delete_option('redirect_case');
delete_site_option('redirect_case');

