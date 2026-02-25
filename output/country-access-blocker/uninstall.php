<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cab_enable_ip_check');
delete_site_option('cab_enable_ip_check');
delete_option('cab_blocked_countries');
delete_site_option('cab_blocked_countries');

