<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('block_catalog_indexed');
delete_site_option('block_catalog_indexed');
delete_option('block_catalog_notice_shown');
delete_site_option('block_catalog_notice_shown');

