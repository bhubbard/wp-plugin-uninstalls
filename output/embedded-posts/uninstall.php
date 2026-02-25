<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('embeddedposts_page_taxonomies_options');
delete_site_option('embeddedposts_page_taxonomies_options');
delete_option('embeddedposts_template_all_link');
delete_site_option('embeddedposts_template_all_link');
delete_option('embeddedposts_get_the_title');
delete_site_option('embeddedposts_get_the_title');
delete_option('embeddedposts_get_the_title_link');
delete_site_option('embeddedposts_get_the_title_link');
delete_option('embeddedposts_get_the_thumbnail');
delete_site_option('embeddedposts_get_the_thumbnail');
delete_option('embeddedposts_get_the_thumbnail_link');
delete_site_option('embeddedposts_get_the_thumbnail_link');
delete_option('embeddedposts_get_the_author');
delete_site_option('embeddedposts_get_the_author');
delete_option('embeddedposts_the_category');
delete_site_option('embeddedposts_the_category');
delete_option('embeddedposts_the_tags');
delete_site_option('embeddedposts_the_tags');
delete_option('embeddedposts_the_excerpt');
delete_site_option('embeddedposts_the_excerpt');

