<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('democracy_version');
delete_site_option('democracy_version');
delete_option('democracy_css');
delete_site_option('democracy_css');
delete_option('democracy_migrated');
delete_site_option('democracy_migrated');
delete_option('poll_allowtovote');
delete_site_option('poll_allowtovote');
delete_option('democracy_l10n');
delete_site_option('democracy_l10n');

