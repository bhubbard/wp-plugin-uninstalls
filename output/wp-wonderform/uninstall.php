<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wonderform_db_version');
delete_site_option('wonderform_db_version');
delete_option('wonderform_version');
delete_site_option('wonderform_version');
delete_option('wonderform_dir');
delete_site_option('wonderform_dir');

