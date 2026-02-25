<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gwcountdown_style_settings');
delete_site_option('gwcountdown_style_settings');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

