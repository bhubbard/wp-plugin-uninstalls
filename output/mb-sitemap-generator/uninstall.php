<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('link-checker-token');
delete_site_option('link-checker-token');
delete_option('sitemap-generator-token');
delete_site_option('sitemap-generator-token');
delete_option('sitemap-generator-max-fetchers');
delete_site_option('sitemap-generator-max-fetchers');
delete_option('sitemap-generator-ignore-embedded-content');
delete_site_option('sitemap-generator-ignore-embedded-content');
delete_option('sitemap-generator-reference-count-threshold');
delete_site_option('sitemap-generator-reference-count-threshold');
delete_option('sitemap-generator-query-params-to-remove');
delete_site_option('sitemap-generator-query-params-to-remove');
delete_option('sitemap-generator-disable-cookies');
delete_site_option('sitemap-generator-disable-cookies');

