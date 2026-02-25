<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tmpl_amp_settings');
delete_site_option('tmpl_amp_settings');
delete_option('tmpl_amp_plugin_active');
delete_site_option('tmpl_amp_plugin_active');

// Delete Transients
delete_transient('twentyfourteen_category_count');
delete_site_transient('twentyfourteen_category_count');

