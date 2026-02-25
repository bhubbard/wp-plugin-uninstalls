<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpciteulike_reset_cache');
delete_site_option('wpciteulike_reset_cache');
delete_option('wpciteulike_css_style');
delete_site_option('wpciteulike_css_style');
delete_option('wpciteulike_bibliography_style');
delete_site_option('wpciteulike_bibliography_style');
delete_option('wpciteulike_title_link');
delete_site_option('wpciteulike_title_link');
delete_option('wpciteulike_html_cache');
delete_site_option('wpciteulike_html_cache');
delete_option('wpciteulike_reset_html_cache');
delete_site_option('wpciteulike_reset_html_cache');

