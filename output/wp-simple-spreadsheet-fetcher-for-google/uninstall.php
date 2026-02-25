<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp2s2fg-api-key');
delete_site_option('wp2s2fg-api-key');
delete_option('wp2s2fg-spread-sheet-id');
delete_site_option('wp2s2fg-spread-sheet-id');

