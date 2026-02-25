<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blacklisted_ip_addresses');
delete_site_option('blacklisted_ip_addresses');

