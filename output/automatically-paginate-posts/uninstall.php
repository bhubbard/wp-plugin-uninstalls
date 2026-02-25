<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autopaging_post_types');
delete_site_option('autopaging_post_types');
delete_option('autopaging_paging_type');
delete_site_option('autopaging_paging_type');
delete_option('autopaging_num_pages');
delete_site_option('autopaging_num_pages');
delete_option('autopaging_num_words');
delete_site_option('autopaging_num_words');

