<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disable-widgets');
delete_site_option('disable-widgets');
delete_option('seo_consultant_current_version');
delete_site_option('seo_consultant_current_version');
delete_option('enable-htaccess-auto-rewrite');
delete_site_option('enable-htaccess-auto-rewrite');
delete_option('check-links');
delete_site_option('check-links');
delete_option('check-live-link');
delete_site_option('check-live-link');

