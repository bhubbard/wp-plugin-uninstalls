<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bsr_page_size');
delete_site_option('bsr_page_size');
delete_option('bsr_data');
delete_site_option('bsr_data');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('bsr_update_site_url');
delete_site_option('bsr_update_site_url');

// Delete Transients
delete_transient('bsr_results');
delete_site_transient('bsr_results');

