<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('media_defaults_inserting');
delete_site_option('media_defaults_inserting');
delete_option('media_defaults_galleries');
delete_site_option('media_defaults_galleries');
delete_option('media_defaults_plugin_version');
delete_site_option('media_defaults_plugin_version');

// Delete Transients
delete_transient('media_defaults_activated');
delete_site_transient('media_defaults_activated');

