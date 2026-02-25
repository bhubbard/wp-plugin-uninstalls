<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('storymap_pro_stories_db_version');
delete_site_option('storymap_pro_stories_db_version');
delete_option('storymap_pro_example_db_version');
delete_site_option('storymap_pro_example_db_version');
delete_option('storymap_pro_options');
delete_site_option('storymap_pro_options');

