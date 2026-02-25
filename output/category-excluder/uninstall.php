<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('category_excluder_w_title');
delete_site_option('category_excluder_w_title');
delete_option('category_excluder_w_categories');
delete_site_option('category_excluder_w_categories');

