<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_easy_download_options');
delete_site_option('_easy_download_options');
delete_option('_easy_download_links');
delete_site_option('_easy_download_links');

