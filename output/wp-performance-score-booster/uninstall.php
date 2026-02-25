<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wppsb_plugin_version');
delete_site_option('wppsb_plugin_version');
delete_option('wppsb_remove_query_strings');
delete_site_option('wppsb_remove_query_strings');
delete_option('wppsb_enable_gzip');
delete_site_option('wppsb_enable_gzip');
delete_option('wppsb_expire_caching');
delete_site_option('wppsb_expire_caching');
delete_option('wppsb_instant_page_preload');
delete_site_option('wppsb_instant_page_preload');
delete_option('wppsb_review_notice');
delete_site_option('wppsb_review_notice');
delete_option('wppsb_activation_date');
delete_site_option('wppsb_activation_date');

