<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nxsg_flush_needed');
delete_site_option('nxsg_flush_needed');
delete_option('nxsg_last_ping_time');
delete_site_option('nxsg_last_ping_time');

