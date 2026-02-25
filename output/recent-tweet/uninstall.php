<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('loklak-settings');
delete_site_option('loklak-settings');
delete_option('loklak_init');
delete_site_option('loklak_init');
delete_option('loklak-settings[loklak_api]');
delete_site_option('loklak-settings[loklak_api]');
delete_option('fa_twitter_plugin_last_cache_time');
delete_site_option('fa_twitter_plugin_last_cache_time');
delete_option('fa_twitter_plugin_tweets');
delete_site_option('fa_twitter_plugin_tweets');

