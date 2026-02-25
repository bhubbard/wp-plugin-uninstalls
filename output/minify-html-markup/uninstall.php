<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('minify_html_active');
delete_site_option('minify_html_active');
delete_option('minify_javascript');
delete_site_option('minify_javascript');
delete_option('minify_html_comments');
delete_site_option('minify_html_comments');
delete_option('minify_html_utf8');
delete_site_option('minify_html_utf8');
delete_option('minify_html_xhtml');
delete_site_option('minify_html_xhtml');
delete_option('minify_html_relative');
delete_site_option('minify_html_relative');
delete_option('minify_html_scheme');
delete_site_option('minify_html_scheme');

