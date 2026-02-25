<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('external_links_in_new_windows_force');
delete_site_option('external_links_in_new_windows_force');
delete_option('external_links_in_new_windows_ignore');
delete_site_option('external_links_in_new_windows_ignore');

