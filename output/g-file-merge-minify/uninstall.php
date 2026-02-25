<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('exclude_script');
delete_site_option('exclude_script');
delete_option('merge_all_script_files');
delete_site_option('merge_all_script_files');
delete_option('minify_script_file');
delete_site_option('minify_script_file');
delete_option('script_exclusion_status');
delete_site_option('script_exclusion_status');
delete_option('script_files_in_the_site');
delete_site_option('script_files_in_the_site');
delete_option('exclude_style');
delete_site_option('exclude_style');
delete_option('merge_all_style_files');
delete_site_option('merge_all_style_files');
delete_option('minify_style_file');
delete_site_option('minify_style_file');
delete_option('style_exclusion_status');
delete_site_option('style_exclusion_status');
delete_option('style_files_in_the_site');
delete_site_option('style_files_in_the_site');

