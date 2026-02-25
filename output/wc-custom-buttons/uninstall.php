<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcb_plainsurf_plugin_settings');
delete_site_option('wcb_plainsurf_plugin_settings');

