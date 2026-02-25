<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('silas_flickr_token');
delete_site_option('silas_flickr_token');
delete_option('silas_flickr_hidealbums');
delete_site_option('silas_flickr_hidealbums');
delete_option('silas_flickr_hidegroups');
delete_site_option('silas_flickr_hidegroups');
delete_option('silas_flickr_grouporder');
delete_site_option('silas_flickr_grouporder');
delete_option('silas_flickr_albumorder');
delete_site_option('silas_flickr_albumorder');
delete_option('silas_flickr_baseurl');
delete_site_option('silas_flickr_baseurl');
delete_option('silas_flickr_linkoptions');
delete_site_option('silas_flickr_linkoptions');
delete_option('silas_flickr_hideprivate');
delete_site_option('silas_flickr_hideprivate');
delete_option('silas_flickr_apikey');
delete_site_option('silas_flickr_apikey');
delete_option('silas_flickr_sharedsecret');
delete_site_option('silas_flickr_sharedsecret');
delete_option('silas_flickr_baseurl_pre');
delete_site_option('silas_flickr_baseurl_pre');
delete_option('silas_flickr_showbadge');
delete_site_option('silas_flickr_showbadge');
delete_option('silas_flickr_user');
delete_site_option('silas_flickr_user');
delete_option('update_plugins');
delete_site_option('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('tantan_flickr_clear_cache_event');

