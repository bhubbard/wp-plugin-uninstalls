<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_chameleon');
delete_site_option('wp_chameleon');
delete_option('ap_case');
delete_site_option('ap_case');
delete_option('ap_layout');
delete_site_option('ap_layout');
delete_option('ap_dom');
delete_site_option('ap_dom');
delete_option('ap_debug_logger');
delete_site_option('ap_debug_logger');
delete_option('alphabetic_pagination_options');
delete_site_option('alphabetic_pagination_options');

// Delete Transients
delete_transient('ap_taxes_types_query_cache');
delete_site_transient('ap_taxes_types_query_cache');

