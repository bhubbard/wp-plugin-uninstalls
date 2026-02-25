<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('loq_latest_Feeds_limit');
delete_site_option('loq_latest_Feeds_limit');
delete_option('loq_latest_Feeds_title');
delete_site_option('loq_latest_Feeds_title');
delete_option('loq_latest_Feeds_feeds_link');
delete_site_option('loq_latest_Feeds_feeds_link');
delete_option('loq_latest_Feeds_title_link');
delete_site_option('loq_latest_Feeds_title_link');
delete_option('loq_latest_Feeds_top_content');
delete_site_option('loq_latest_Feeds_top_content');
delete_option('loq_latest_Feeds_bottom_content');
delete_site_option('loq_latest_Feeds_bottom_content');

