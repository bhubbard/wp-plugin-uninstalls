<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rate_limiting_enabled');
delete_site_option('rate_limiting_enabled');
delete_option('rate_limiting_seconds');
delete_site_option('rate_limiting_seconds');
delete_option('rate_limiting_limit');
delete_site_option('rate_limiting_limit');
delete_option('rate_limiting_proxy_support');
delete_site_option('rate_limiting_proxy_support');

