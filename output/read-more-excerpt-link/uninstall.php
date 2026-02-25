<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('read_more_excerpt_link_text');
delete_site_option('read_more_excerpt_link_text');
delete_option('read_more_excerpt_include_ellipsis');
delete_site_option('read_more_excerpt_include_ellipsis');
delete_option('read_more_excerpt_more_often');
delete_site_option('read_more_excerpt_more_often');
delete_option('read_more_excerpt_word_length');
delete_site_option('read_more_excerpt_word_length');

