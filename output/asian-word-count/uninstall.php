<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bjl_word_count_main');
delete_site_option('bjl_word_count_main');
delete_option('bjl_word_count_cache');
delete_site_option('bjl_word_count_cache');
delete_option('bjl_word_count_author');
delete_site_option('bjl_word_count_author');
delete_option('bjl_word_count_month');
delete_site_option('bjl_word_count_month');

