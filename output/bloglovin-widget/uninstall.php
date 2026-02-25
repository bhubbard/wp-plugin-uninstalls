<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pipdig_bloglovin_plugin_url');
delete_site_option('pipdig_bloglovin_plugin_url');
delete_option('pipdig_bloglovin_follower_count');
delete_site_option('pipdig_bloglovin_follower_count');

