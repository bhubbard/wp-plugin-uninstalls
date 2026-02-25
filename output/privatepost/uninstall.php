<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_privatepost');
delete_site_option('widget_privatepost');
delete_option('PrivateColor');
delete_site_option('PrivateColor');
delete_option('what_to_show');
delete_site_option('what_to_show');
delete_option('PrivateIndicator');
delete_site_option('PrivateIndicator');
delete_option('MyPrivateCat');
delete_site_option('MyPrivateCat');
delete_option('PrivateRSSFeedLocation');
delete_site_option('PrivateRSSFeedLocation');
delete_option('rss_language');
delete_site_option('rss_language');

