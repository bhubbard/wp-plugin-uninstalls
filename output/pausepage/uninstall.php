<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pausepage_enabled');
delete_site_option('pausepage_enabled');
delete_option('pausepage_page_id');
delete_site_option('pausepage_page_id');

