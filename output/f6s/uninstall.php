<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('f6s_api_key');
delete_site_option('f6s_api_key');
delete_option('f6s_reset_cache');
delete_site_option('f6s_reset_cache');

