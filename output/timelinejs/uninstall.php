<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('display_only_these_post_categories_as_a_timeline');
delete_site_option('display_only_these_post_categories_as_a_timeline');
delete_option('display_post_categories_as_inline_timeline');
delete_site_option('display_post_categories_as_inline_timeline');
delete_option('display_post_categories_as_a_timeline');
delete_site_option('display_post_categories_as_a_timeline');
delete_option('only_display_other_timeline_hotswap');
delete_site_option('only_display_other_timeline_hotswap');

