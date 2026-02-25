<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wptuit_version');
delete_site_option('wptuit_version');
delete_option('wptuit_cache');
delete_site_option('wptuit_cache');
delete_option('wptuit_username');
delete_site_option('wptuit_username');
delete_option('wptuit_statuslink');
delete_site_option('wptuit_statuslink');
delete_option('wptuit_tweets');
delete_site_option('wptuit_tweets');
delete_option('wptuit_widget');
delete_site_option('wptuit_widget');

