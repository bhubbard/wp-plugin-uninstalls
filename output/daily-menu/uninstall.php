<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dm_db_version');
delete_site_option('dm_db_version');
delete_option('dm_type_list');
delete_site_option('dm_type_list');
delete_option('dm_sstype_list');
delete_site_option('dm_sstype_list');
delete_option('dm_shotcode_css');
delete_site_option('dm_shotcode_css');

