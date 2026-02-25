<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('vhp_varnish_url');
delete_site_option('vhp_varnish_url');
delete_option('vhp_varnish_ip');
delete_site_option('vhp_varnish_ip');
delete_option('vhp_varnish_max_posts_before_all');
delete_site_option('vhp_varnish_max_posts_before_all');

