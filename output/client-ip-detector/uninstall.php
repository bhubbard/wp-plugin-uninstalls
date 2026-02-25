<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('IPv6_counter');
delete_site_option('IPv6_counter');
delete_option('IPv4_counter');
delete_site_option('IPv4_counter');

