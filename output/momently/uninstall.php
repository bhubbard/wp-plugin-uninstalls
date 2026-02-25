<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('momently_script');
delete_site_option('momently_script');
delete_option('momently_site_id');
delete_site_option('momently_site_id');
delete_option('momently_track_admin');
delete_site_option('momently_track_admin');
delete_option('momently_automatic_updates');
delete_site_option('momently_automatic_updates');
delete_option('momently_custom_taxonomy_cat');
delete_site_option('momently_custom_taxonomy_cat');
delete_option('momently_lowercase_tags');
delete_site_option('momently_lowercase_tags');
delete_option('momently_top_level_cat');
delete_site_option('momently_top_level_cat');
delete_option('momently_cats_as_tags');
delete_site_option('momently_cats_as_tags');

