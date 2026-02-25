<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sticklyui_version');
delete_site_option('sticklyui_version');
delete_option('sticklyui_contact_settings');
delete_site_option('sticklyui_contact_settings');
delete_option('sticklyui_header_settings');
delete_site_option('sticklyui_header_settings');

// Delete Transients
delete_transient('sticklyui_buttons_cache');
delete_site_transient('sticklyui_buttons_cache');

