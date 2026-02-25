<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('abp_author_id');
delete_site_option('abp_author_id');
delete_option('abp_auth_key');
delete_site_option('abp_auth_key');
delete_option('abp_cache_time');
delete_site_option('abp_cache_time');
delete_option('abp_categories');
delete_site_option('abp_categories');
delete_option('abp_cache_time_const');
delete_site_option('abp_cache_time_const');
delete_option('abp_magenet_api_url');
delete_site_option('abp_magenet_api_url');
delete_option('abp_cp_host');
delete_site_option('abp_cp_host');

