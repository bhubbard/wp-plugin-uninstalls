<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('read_more_color');
delete_site_option('read_more_color');
delete_option('wpauthor_social_color');
delete_site_option('wpauthor_social_color');
delete_option('wpauthor_text_font_size');
delete_site_option('wpauthor_text_font_size');
delete_option('wpauthor_social_font_size');
delete_site_option('wpauthor_social_font_size');
delete_option('wpauthor_social_top_margin');
delete_site_option('wpauthor_social_top_margin');
delete_option('wpauthor_designation');
delete_site_option('wpauthor_designation');
delete_option('wpauthor_title');
delete_site_option('wpauthor_title');
delete_option('wpauthor_bio');
delete_site_option('wpauthor_bio');
delete_option('wpauthor_label');
delete_site_option('wpauthor_label');

