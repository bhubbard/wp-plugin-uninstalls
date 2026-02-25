<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dxuc_authors_list');
delete_site_option('dxuc_authors_list');
delete_option('dxuc_comment_count');
delete_site_option('dxuc_comment_count');

