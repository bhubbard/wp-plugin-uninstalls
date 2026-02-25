<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('get_next_article_article_series');
delete_site_option('get_next_article_article_series');
delete_option('get_next_article_set_name');
delete_site_option('get_next_article_set_name');

