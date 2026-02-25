<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('a4c_cc_plugin_options');
delete_site_option('a4c_cc_plugin_options');

