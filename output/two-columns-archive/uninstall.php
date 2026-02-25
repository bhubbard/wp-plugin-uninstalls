<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('two_columns_archive_title');
delete_site_option('two_columns_archive_title');
delete_option('site_url');
delete_site_option('site_url');

