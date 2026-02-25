<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpecf7vb_selection_theme');
delete_site_option('wpecf7vb_selection_theme');
delete_option('icon_eyes_status');
delete_site_option('icon_eyes_status');

