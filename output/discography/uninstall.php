<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('discography');
delete_site_option('discography');
delete_option('discography_db_version');
delete_site_option('discography_db_version');
delete_option('discography_plugin_version');
delete_site_option('discography_plugin_version');

