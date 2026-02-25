<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lvips_visitor_ips_db_version');
delete_site_option('lvips_visitor_ips_db_version');

