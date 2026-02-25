<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pressmodo_demo_installed');
delete_site_option('pressmodo_demo_installed');
delete_option('bsr_data');
delete_site_option('bsr_data');
delete_option('bsr_page_size');
delete_site_option('bsr_page_size');
delete_option('bsr_update_site_url');
delete_site_option('bsr_update_site_url');

// Delete Transients
delete_transient('bsr_results');
delete_site_transient('bsr_results');

