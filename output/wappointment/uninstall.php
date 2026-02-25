<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wappo_plug_activated');
delete_site_option('wappo_plug_activated');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('wappointment_installation_time');
delete_site_option('wappointment_installation_time');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

