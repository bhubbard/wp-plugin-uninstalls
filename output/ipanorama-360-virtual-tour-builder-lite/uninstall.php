<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ipanorama_db_version');
delete_site_option('ipanorama_db_version');
delete_option('ipanorama_activated');
delete_site_option('ipanorama_activated');
delete_option('ipanorama_settings');
delete_site_option('ipanorama_settings');
delete_option('default_post_edit_rows');
delete_site_option('default_post_edit_rows');

