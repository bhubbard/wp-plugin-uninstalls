<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kwp_settings_ApiRestPosts');
delete_site_option('kwp_settings_ApiRestPosts');

