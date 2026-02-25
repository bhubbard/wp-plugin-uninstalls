<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bible_reader_api_key');
delete_site_option('bible_reader_api_key');
delete_option('bible_reader_last_clear');
delete_site_option('bible_reader_last_clear');

