<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('prodshow_shopify_url');
delete_site_option('prodshow_shopify_url');
delete_option('prodshow_shopify_access_token');
delete_site_option('prodshow_shopify_access_token');
delete_option('prodshow_shopify_client_id');
delete_site_option('prodshow_shopify_client_id');
delete_option('prodshow_shopify_client_secret');
delete_site_option('prodshow_shopify_client_secret');
delete_option('prodshow_cache_duration');
delete_site_option('prodshow_cache_duration');
delete_option('prodshow_utm_source');
delete_site_option('prodshow_utm_source');
delete_option('prodshow_utm_medium');
delete_site_option('prodshow_utm_medium');
delete_option('prodshow_utm_campaign');
delete_site_option('prodshow_utm_campaign');
delete_option('prodshow_shopify_api_version');
delete_site_option('prodshow_shopify_api_version');

// Delete Transients
delete_transient('prodshow_oauth_success');
delete_site_transient('prodshow_oauth_success');
delete_transient('prodshow_oauth_error');
delete_site_transient('prodshow_oauth_error');
delete_transient('prodshow_api_version_check');
delete_site_transient('prodshow_api_version_check');

