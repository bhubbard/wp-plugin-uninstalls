<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

