<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bop_nav_search_box_item_recd_vers_warn');
delete_site_option('bop_nav_search_box_item_recd_vers_warn');
delete_option('bop_nav_search_box_item_version');
delete_site_option('bop_nav_search_box_item_version');
delete_option('bop_nav_search_box_item_recommended_versions_warn');
delete_site_option('bop_nav_search_box_item_recommended_versions_warn');

