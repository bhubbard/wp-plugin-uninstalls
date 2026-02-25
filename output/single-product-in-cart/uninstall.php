<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pjspic_plugin_settings');
delete_site_option('pjspic_plugin_settings');

// Delete Transients
delete_transient('pjspic_some_transient');
delete_site_transient('pjspic_some_transient');

