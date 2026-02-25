<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smokesignal_options');
delete_site_option('smokesignal_options');
delete_option('smokesignal_db_version');
delete_site_option('smokesignal_db_version');

