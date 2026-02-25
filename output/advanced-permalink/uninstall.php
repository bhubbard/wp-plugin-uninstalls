<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mng_post_type_permalinks');
delete_site_option('mng_post_type_permalinks');
delete_option('mng_page_permalinks');
delete_site_option('mng_page_permalinks');

