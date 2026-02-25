<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lbs_bible_version');
delete_site_option('lbs_bible_version');
delete_option('lbs_libronix');
delete_site_option('lbs_libronix');
delete_option('lbs_existing_libronix');
delete_site_option('lbs_existing_libronix');
delete_option('lbs_libronix_color');
delete_site_option('lbs_libronix_color');
delete_option('lbs_tooltips');
delete_site_option('lbs_tooltips');
delete_option('lbs_search_comments');
delete_site_option('lbs_search_comments');
delete_option('lbs_nosearch');
delete_site_option('lbs_nosearch');
delete_option('lbs_new_window');
delete_site_option('lbs_new_window');
delete_option('lbs_libronix_bible_version');
delete_site_option('lbs_libronix_bible_version');
delete_option('lbs_convert_hyperlinks');
delete_site_option('lbs_convert_hyperlinks');
delete_option('lbs_case_insensitive');
delete_site_option('lbs_case_insensitive');
delete_option('lbs_tag_chapters');
delete_site_option('lbs_tag_chapters');

