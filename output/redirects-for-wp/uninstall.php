<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_301_redirects');
delete_site_option('wp_301_redirects');
delete_option('wp_301_redirects_wildcard');
delete_site_option('wp_301_redirects_wildcard');
delete_option('wp301redirects_hide_btl_notice');
delete_site_option('wp301redirects_hide_btl_notice');
delete_option('wp301redirects_version');
delete_site_option('wp301redirects_version');

// Delete Transients
delete_transient('wp_301_redirects_import_info');
delete_site_transient('wp_301_redirects_import_info');

