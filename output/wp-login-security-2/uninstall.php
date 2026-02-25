<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wploginsecurity2_ip_whitelist');
delete_site_option('wploginsecurity2_ip_whitelist');
delete_option('wploginsecurity2');
delete_site_option('wploginsecurity2');

