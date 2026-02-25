<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_notes_plus_db_version');
delete_site_option('plugin_notes_plus_db_version');
delete_option('plugin_notes_plus_note_placement');
delete_site_option('plugin_notes_plus_note_placement');

