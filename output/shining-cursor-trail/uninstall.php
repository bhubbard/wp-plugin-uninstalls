<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shining_cursor_character');
delete_site_option('shining_cursor_character');
delete_option('shining_cursor_color');
delete_site_option('shining_cursor_color');

