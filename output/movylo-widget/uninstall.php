<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('movylo_disabled');
delete_site_option('movylo_disabled');
delete_option('movylo_embed_code');
delete_site_option('movylo_embed_code');
delete_option('movylo_api_id');
delete_site_option('movylo_api_id');
delete_option('movylo_api_secret');
delete_site_option('movylo_api_secret');
delete_option('movylo_store_id');
delete_site_option('movylo_store_id');
delete_option('movylo_access_token');
delete_site_option('movylo_access_token');
delete_option('movylo_refresh_token');
delete_site_option('movylo_refresh_token');

