<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('thisismyurl_wp_title_case_min_word_length');
delete_site_option('thisismyurl_wp_title_case_min_word_length');
delete_option('thisismyurl_wp_title_case_ignore_words');
delete_site_option('thisismyurl_wp_title_case_ignore_words');
delete_option('thisismyurl_title_case');
delete_site_option('thisismyurl_title_case');

