<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ddpost_enable_default_post_type');
delete_site_option('ddpost_enable_default_post_type');
delete_option('ddpost_default_post_type');
delete_site_option('ddpost_default_post_type');
delete_option('ddpost_enable_notifications');
delete_site_option('ddpost_enable_notifications');
delete_option('ddpost_options');
delete_site_option('ddpost_options');

