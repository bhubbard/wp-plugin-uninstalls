<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('accessible_tooltips_custom_css');
delete_site_option('accessible_tooltips_custom_css');
delete_option('accessible_tooltips_theme');
delete_site_option('accessible_tooltips_theme');
delete_option('accessible_tooltips_interactive_border_size');
delete_site_option('accessible_tooltips_interactive_border_size');
delete_option('accessible_tooltips_placement');
delete_site_option('accessible_tooltips_placement');
delete_option('accessible_tooltips_fallback_placement');
delete_site_option('accessible_tooltips_fallback_placement');
delete_option('accessible_tooltips_allow_html');
delete_site_option('accessible_tooltips_allow_html');
delete_option('accessible_tooltips_hide_on_click');
delete_site_option('accessible_tooltips_hide_on_click');

