<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sidebar_nav_for_wpbakery_disable_description');
delete_site_option('sidebar_nav_for_wpbakery_disable_description');
delete_option('sidebar_nav_for_wpbakery_compact_view');
delete_site_option('sidebar_nav_for_wpbakery_compact_view');
delete_option('sidebar_nav_for_wpbakery_compact_view_edit_form');
delete_site_option('sidebar_nav_for_wpbakery_compact_view_edit_form');
delete_option('sidebar_nav_for_wpbakery_responsive_view');
delete_site_option('sidebar_nav_for_wpbakery_responsive_view');
delete_option('sidebar_nav_for_wpbakery_page_structure');
delete_site_option('sidebar_nav_for_wpbakery_page_structure');
delete_option('sidebar_nav_for_wpbakery_sidebar_position');
delete_site_option('sidebar_nav_for_wpbakery_sidebar_position');
delete_option('sidebar_nav_for_wpbakery_color_theme');
delete_site_option('sidebar_nav_for_wpbakery_color_theme');

