<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('illegal_names');
delete_site_option('illegal_names');
delete_option('site_name');
delete_site_option('site_name');
delete_option('ms_files_rewriting');
delete_site_option('ms_files_rewriting');

