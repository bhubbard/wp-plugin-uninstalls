<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('feedspace_activated');
delete_site_option('feedspace_activated');
delete_option('feedspace_options');
delete_site_option('feedspace_options');
delete_option('feedspace_preserve_settings_on_uninstall');
delete_site_option('feedspace_preserve_settings_on_uninstall');

// Delete Transients
delete_transient('feedspace_block_assets');
delete_site_transient('feedspace_block_assets');
delete_transient('feedspace_plugin_path');
delete_site_transient('feedspace_plugin_path');

