<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('headline_split_impressions');
delete_site_option('headline_split_impressions');
delete_option('use_alt_headline_on_full_post');
delete_site_option('use_alt_headline_on_full_post');

