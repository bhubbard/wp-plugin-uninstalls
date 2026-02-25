<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rss-no-more-on');
delete_site_option('rss-no-more-on');
delete_option('rss-no-more-em');
delete_site_option('rss-no-more-em');
delete_option('rss-no-more-link');
delete_site_option('rss-no-more-link');
delete_option('rss-no-more-footer');
delete_site_option('rss-no-more-footer');
delete_option('rss-no-more-hr');
delete_site_option('rss-no-more-hr');
delete_option('rss-no-more-style');
delete_site_option('rss-no-more-style');
delete_option('rss-no-more-tracking');
delete_site_option('rss-no-more-tracking');
delete_option('rss-no-more-utm-source');
delete_site_option('rss-no-more-utm-source');
delete_option('rss-no-more-utm-campaign');
delete_site_option('rss-no-more-utm-campaign');
delete_option('rss-no-more-utm-medium');
delete_site_option('rss-no-more-utm-medium');

