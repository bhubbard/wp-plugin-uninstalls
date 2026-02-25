<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acc_css_everywhere');
delete_site_option('acc_css_everywhere');
delete_option('acc_css_posts');
delete_site_option('acc_css_posts');
delete_option('acc_css_pages');
delete_site_option('acc_css_pages');

