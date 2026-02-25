<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twitter_update_interval');
delete_site_option('twitter_update_interval');
delete_option('twitter_users_per_update');
delete_site_option('twitter_users_per_update');
delete_option('twitter_ajax_refresh_interval');
delete_site_option('twitter_ajax_refresh_interval');

