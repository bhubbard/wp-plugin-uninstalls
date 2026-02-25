<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('description_text');
delete_site_option('description_text');
delete_option('answer_colour_one_string');
delete_site_option('answer_colour_one_string');
delete_option('colour_one');
delete_site_option('colour_one');
delete_option('enable_post_comments');
delete_site_option('enable_post_comments');

