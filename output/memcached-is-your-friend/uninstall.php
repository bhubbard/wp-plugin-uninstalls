<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wordpress_memcached_support_version');
delete_site_option('wordpress_memcached_support_version');
delete_option('wordpress_memcached_support_notice');
delete_site_option('wordpress_memcached_support_notice');

