<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adredux_settings');
delete_site_option('adredux_settings');

// Delete Transients
delete_transient('adredux-activated');
delete_site_transient('adredux-activated');

