<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blurry_options');
delete_site_option('blurry_options');
delete_option('plugin_options');
delete_site_option('plugin_options');

