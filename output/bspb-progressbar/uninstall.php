<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bspb_plugin_version');
delete_site_option('bspb_plugin_version');
delete_option('bspb_settings');
delete_site_option('bspb_settings');
delete_option('bspb_plugin_settings');
delete_site_option('bspb_plugin_settings');
delete_option('bspb_configuration');
delete_site_option('bspb_configuration');
delete_option('bspb_plugin_configuration');
delete_site_option('bspb_plugin_configuration');
delete_option('bspb_animation');
delete_site_option('bspb_animation');
delete_option('bspb_plugin_animation');
delete_site_option('bspb_plugin_animation');
delete_option('bspb_plugin_activated_blogs');
delete_site_option('bspb_plugin_activated_blogs');
delete_option('bspb_plugin_licenses');
delete_site_option('bspb_plugin_licenses');
delete_option('setting_type');
delete_site_option('setting_type');

// Delete Transients
delete_transient('bspb_plugin_addons_feed');
delete_site_transient('bspb_plugin_addons_feed');

