<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('open_lightbox_event');
delete_site_option('open_lightbox_event');
delete_option('open_link_in_new_page');
delete_site_option('open_link_in_new_page');
delete_option('display_google_search');
delete_site_option('display_google_search');
delete_option('display_wp_tags_page');
delete_site_option('display_wp_tags_page');
delete_option('display_wiki_search');
delete_site_option('display_wiki_search');

