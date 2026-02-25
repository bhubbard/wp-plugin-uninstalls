<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('displaytweets_version');
delete_site_option('displaytweets_version');
delete_option('displaytweets_settings');
delete_site_option('displaytweets_settings');

// Delete Transients
delete_transient('displaytweets_tweets');
delete_site_transient('displaytweets_tweets');

