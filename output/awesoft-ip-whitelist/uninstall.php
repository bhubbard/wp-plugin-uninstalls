<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awesoft_ip_whitelist_enabled');
delete_site_option('awesoft_ip_whitelist_enabled');
delete_option('awesoft_ip_whitelist_list');
delete_site_option('awesoft_ip_whitelist_list');

