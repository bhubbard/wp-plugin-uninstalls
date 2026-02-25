<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('my-affiliate-link-siteurl');
delete_site_option('my-affiliate-link-siteurl');
delete_option('my-affiliate-link-prefix');
delete_site_option('my-affiliate-link-prefix');
delete_option('my-affiliate-link-cssclass');
delete_site_option('my-affiliate-link-cssclass');
delete_option('my-affiliate-link-onclick');
delete_site_option('my-affiliate-link-onclick');
delete_option('my-affiliate-link-nofollow');
delete_site_option('my-affiliate-link-nofollow');
delete_option('my-affiliate-link-target');
delete_site_option('my-affiliate-link-target');
delete_option('my-affiliate-link-trailingslash');
delete_site_option('my-affiliate-link-trailingslash');
delete_option('my-affiliate-link-childsep');
delete_site_option('my-affiliate-link-childsep');
delete_option('my-affiliate-link-amazontrackingid');
delete_site_option('my-affiliate-link-amazontrackingid');
delete_option('my-affiliate-link-class');
delete_site_option('my-affiliate-link-class');

