<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('matomo_url');
delete_site_option('matomo_url');
delete_option('matomo_site_id');
delete_site_option('matomo_site_id');
delete_option('matomo_disable_cookies');
delete_site_option('matomo_disable_cookies');
delete_option('matomo_rss_campaign');
delete_site_option('matomo_rss_campaign');
delete_option('matomo_rss_source');
delete_site_option('matomo_rss_source');

