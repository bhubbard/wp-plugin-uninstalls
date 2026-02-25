<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('screencloud_plugin_settings');
delete_site_option('screencloud_plugin_settings');

// Delete Transients
delete_transient('screencloud_activation_notice');
delete_site_transient('screencloud_activation_notice');

