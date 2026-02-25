<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('diyma_enabled');
delete_site_option('diyma_enabled');
delete_option('diyma_page_id');
delete_site_option('diyma_page_id');

