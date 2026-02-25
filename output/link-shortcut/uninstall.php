<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('linkshortcut_subdir');
delete_site_option('linkshortcut_subdir');
delete_option('linkshortcut_length');
delete_site_option('linkshortcut_length');
delete_option('linkshortcut_redirecttype');
delete_site_option('linkshortcut_redirecttype');

