<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vine-plugin-options');
delete_site_option('vine-plugin-options');

// Delete Transients
delete_transient('vine_web_forms_cache');
delete_site_transient('vine_web_forms_cache');
delete_transient('vine_multiorg_status_cache');
delete_site_transient('vine_multiorg_status_cache');

