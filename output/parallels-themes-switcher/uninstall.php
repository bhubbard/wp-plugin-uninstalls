<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WPXW_Cookie-Time');
delete_site_option('WPXW_Cookie-Time');
delete_option('WPXW_only_admin');
delete_site_option('WPXW_only_admin');
delete_option('WPXW_excluded_ip');
delete_site_option('WPXW_excluded_ip');
delete_option('WPXW_file');
delete_site_option('WPXW_file');

