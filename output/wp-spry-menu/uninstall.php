<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('parent_border_width');
delete_site_option('parent_border_width');
delete_option('child_border_width');
delete_site_option('child_border_width');

// Delete Transients
delete_transient('wp_spry_menu_themes');
delete_site_transient('wp_spry_menu_themes');

