<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ipages_flipbook_db_version');
delete_site_option('ipages_flipbook_db_version');
delete_option('ipages_flipbook_activated');
delete_site_option('ipages_flipbook_activated');
delete_option('ipages_flipbook_settings');
delete_site_option('ipages_flipbook_settings');

