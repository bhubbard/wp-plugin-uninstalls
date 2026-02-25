<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dynwid_old_method');
delete_site_option('dynwid_old_method');
delete_option('dynwid_page_limit');
delete_site_option('dynwid_page_limit');
delete_option('dynwid_version');
delete_site_option('dynwid_version');
delete_option('dynwid_housekeeping_lastrun');
delete_site_option('dynwid_housekeeping_lastrun');
delete_option('recently_activated');
delete_site_option('recently_activated');
delete_option('qtranslate_enabled_languages');
delete_site_option('qtranslate_enabled_languages');
delete_option('qtranslate_default_language');
delete_site_option('qtranslate_default_language');

