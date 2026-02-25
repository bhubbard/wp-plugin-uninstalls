<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('unique_file_version');
delete_site_option('unique_file_version');
delete_option('unique_file_rename_md5');
delete_site_option('unique_file_rename_md5');
delete_option('unique_file_must_one');
delete_site_option('unique_file_must_one');
delete_option('unique_file_without_siteid');
delete_site_option('unique_file_without_siteid');
delete_option('unique_file_prevent_deletion');
delete_site_option('unique_file_prevent_deletion');

