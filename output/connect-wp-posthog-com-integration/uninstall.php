<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ph_snippet_code');
delete_site_option('ph_snippet_code');
delete_option('ph_plugin_enabled');
delete_site_option('ph_plugin_enabled');

