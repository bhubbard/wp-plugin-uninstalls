<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('esse_plugin_options');
delete_site_option('esse_plugin_options');
delete_option('search_bar_options');
delete_site_option('search_bar_options');

