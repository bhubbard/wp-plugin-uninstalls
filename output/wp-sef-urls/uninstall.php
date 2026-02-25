<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_sefurls_date_structure');
delete_site_option('wp_sefurls_date_structure');
delete_option('wp_sefurls_author_structure');
delete_site_option('wp_sefurls_author_structure');
delete_option('wp_sefurls_page_structure');
delete_site_option('wp_sefurls_page_structure');
delete_option('wp_sefurls_category_slug');
delete_site_option('wp_sefurls_category_slug');

