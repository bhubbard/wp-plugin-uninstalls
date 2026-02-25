<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('display_cats_by_tag_direction');
delete_site_option('display_cats_by_tag_direction');
delete_option('display_cats_by_tag_table_title');
delete_site_option('display_cats_by_tag_table_title');
delete_option('display_cats_by_tag_stylesheet');
delete_site_option('display_cats_by_tag_stylesheet');
delete_option('display_cats_by_tag_replace_text');
delete_site_option('display_cats_by_tag_replace_text');
delete_option('display_cats_by_tag_empty_cell');
delete_site_option('display_cats_by_tag_empty_cell');

