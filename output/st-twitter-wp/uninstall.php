<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('st_twitter_admin_notice');
delete_site_option('st_twitter_admin_notice');
delete_option('st_tw_settings');
delete_site_option('st_tw_settings');

