<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scrolltotop_plugin_settings');
delete_site_option('scrolltotop_plugin_settings');

// Delete Transients
delete_transient('scrolltotop_dynamic_js');
delete_site_transient('scrolltotop_dynamic_js');
delete_transient('scrolltotop_dynamic_css');
delete_site_transient('scrolltotop_dynamic_css');

