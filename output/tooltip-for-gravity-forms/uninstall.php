<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tooltip_plugin_version');
delete_site_option('tooltip_plugin_version');
delete_option('gravity_tooltip_options');
delete_site_option('gravity_tooltip_options');

// Delete Transients
delete_transient('tooltip_update_checker');
delete_site_transient('tooltip_update_checker');
delete_transient('gravitychecker');
delete_site_transient('gravitychecker');

