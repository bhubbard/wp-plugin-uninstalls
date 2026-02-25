<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jomres_wp_plugin_version');
delete_site_option('jomres_wp_plugin_version');

