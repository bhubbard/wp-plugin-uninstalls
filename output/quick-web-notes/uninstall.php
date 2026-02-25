<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('quick_web_notes_position_css');
delete_site_transient('quick_web_notes_position_css');
delete_transient('quick_web_notes_message');
delete_site_transient('quick_web_notes_message');
delete_transient('quick_web_notes_bulk_delete_result');
delete_site_transient('quick_web_notes_bulk_delete_result');

