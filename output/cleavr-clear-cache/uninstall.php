<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cleavr_auto_clear_cache');
delete_site_option('cleavr_auto_clear_cache');
delete_option('cleavr_nginx_cache_hook');
delete_site_option('cleavr_nginx_cache_hook');

