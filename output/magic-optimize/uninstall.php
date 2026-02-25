<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('optimize_minify_html');
delete_site_option('optimize_minify_html');
delete_option('optimize_minify_css');
delete_site_option('optimize_minify_css');
delete_option('optimize_minify_js');
delete_site_option('optimize_minify_js');

