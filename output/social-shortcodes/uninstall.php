<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fts_ss_oauth_access_token');
delete_site_option('fts_ss_oauth_access_token');
delete_option('fts_ss_oauth_access_token_secret');
delete_site_option('fts_ss_oauth_access_token_secret');
delete_option('fts_ss_consumer_key');
delete_site_option('fts_ss_consumer_key');
delete_option('fts_ss_consumer_secret');
delete_site_option('fts_ss_consumer_secret');

