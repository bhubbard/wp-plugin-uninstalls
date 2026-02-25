<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pcsh_style');
delete_site_option('pcsh_style');
delete_option('pcsh_cache_duration');
delete_site_option('pcsh_cache_duration');

