<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ssb_settings');
delete_site_option('ssb_settings');
delete_option('ssb_buttons');
delete_site_option('ssb_buttons');
delete_option('ssb_showoncpt');
delete_site_option('ssb_showoncpt');
delete_option('ssb_icons_migrated');
delete_site_option('ssb_icons_migrated');

