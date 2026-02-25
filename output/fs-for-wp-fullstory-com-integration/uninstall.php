<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fsi_snippet_code');
delete_site_option('fsi_snippet_code');
delete_option('fsi_identity');
delete_site_option('fsi_identity');
delete_option('fsi_plugin_enabled');
delete_site_option('fsi_plugin_enabled');

