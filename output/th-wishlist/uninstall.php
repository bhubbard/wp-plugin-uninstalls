<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('thwl_page_id');
delete_site_option('thwl_page_id');
delete_option('thwl_settings');
delete_site_option('thwl_settings');

// Delete Transients
delete_transient('thwl_install_checked');
delete_site_transient('thwl_install_checked');

