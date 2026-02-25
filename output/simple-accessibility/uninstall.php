<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webmv_sa_plugin_options');
delete_site_option('webmv_sa_plugin_options');

