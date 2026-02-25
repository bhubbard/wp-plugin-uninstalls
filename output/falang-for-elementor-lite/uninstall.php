<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elementor_element_cache_ttl');
delete_site_option('elementor_element_cache_ttl');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

