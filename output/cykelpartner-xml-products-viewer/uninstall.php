<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cp_td');
delete_site_option('cp_td');
delete_option('cp_pa');
delete_site_option('cp_pa');
delete_option('cp_cache_timeout');
delete_site_option('cp_cache_timeout');

