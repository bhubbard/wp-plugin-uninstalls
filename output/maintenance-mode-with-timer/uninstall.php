<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mtm_options');
delete_site_option('mtm_options');
delete_option('mtm_plugin_version');
delete_site_option('mtm_plugin_version');

