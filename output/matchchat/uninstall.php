<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mc_show_history');
delete_site_option('mc_show_history');
delete_option('mc_show_count');
delete_site_option('mc_show_count');
delete_option('mc_cache_limit');
delete_site_option('mc_cache_limit');

