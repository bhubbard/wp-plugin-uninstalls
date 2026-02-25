<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('InstagramClientID');
delete_site_option('InstagramClientID');
delete_option('InstagramClientSecret');
delete_site_option('InstagramClientSecret');
delete_option('InstagramAccessToken');
delete_site_option('InstagramAccessToken');
delete_option('InstagramUserId');
delete_site_option('InstagramUserId');
delete_option('InstagramAccessTokenLong');
delete_site_option('InstagramAccessTokenLong');

// Clear Cron Jobs
wp_clear_scheduled_hook('token_renew_hook');

