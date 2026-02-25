<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('on_google1_posts');
delete_site_option('on_google1_posts');
delete_option('on_google1_pages');
delete_site_option('on_google1_pages');
delete_option('on_google1_homepage');
delete_site_option('on_google1_homepage');
delete_option('on_google1_size');
delete_site_option('on_google1_size');
delete_option('on_google1_count');
delete_site_option('on_google1_count');
delete_option('on_google1_callback');
delete_site_option('on_google1_callback');
delete_option('on_google1_top');
delete_site_option('on_google1_top');
delete_option('on_google1_bottom');
delete_site_option('on_google1_bottom');
delete_option('on_google1_lang');
delete_site_option('on_google1_lang');

