<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sfly_simply_excerpt_words_enabled');
delete_site_option('sfly_simply_excerpt_words_enabled');
delete_option('sfly_simply_excerpt_words');
delete_site_option('sfly_simply_excerpt_words');
delete_option('sfly_simply_excerpt_read_more_enabled');
delete_site_option('sfly_simply_excerpt_read_more_enabled');
delete_option('sfly_simply_excerpt_read_more');
delete_site_option('sfly_simply_excerpt_read_more');
delete_option('sfly_simply_excerpt_type');
delete_site_option('sfly_simply_excerpt_type');

