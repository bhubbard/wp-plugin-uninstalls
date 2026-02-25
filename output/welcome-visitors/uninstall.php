<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('welcome_visitor_css_style');
delete_site_option('welcome_visitor_css_style');
delete_option('rss_address');
delete_site_option('rss_address');
delete_option('welcome_words');
delete_site_option('welcome_words');
delete_option('default');
delete_site_option('default');

