<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ljk_main_settings');
delete_site_option('ljk_main_settings');
delete_option('ljk_db_version');
delete_site_option('ljk_db_version');

