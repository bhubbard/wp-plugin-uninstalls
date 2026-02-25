<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acfgfs_api_key');
delete_site_option('acfgfs_api_key');

// Delete Transients
delete_transient('acfgfs_fonts');
delete_site_transient('acfgfs_fonts');

