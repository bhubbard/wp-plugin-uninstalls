<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('hide_wp_toolbar_status');
delete_site_transient('hide_wp_toolbar_status');

