<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vloops_wp_plugin_options');
delete_site_option('vloops_wp_plugin_options');
delete_option('vl_script');
delete_site_option('vl_script');
delete_option('vl_campaigns');
delete_site_option('vl_campaigns');

