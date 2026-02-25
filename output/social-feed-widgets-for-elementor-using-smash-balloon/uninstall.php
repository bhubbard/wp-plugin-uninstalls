<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sfafe-alreadyRated');
delete_site_option('sfafe-alreadyRated');
delete_option('sfafe-installDate');
delete_site_option('sfafe-installDate');
delete_option('sb_instagram_settings');
delete_site_option('sb_instagram_settings');
delete_option('sfafe-v');
delete_site_option('sfafe-v');
delete_option('sfafe-type');
delete_site_option('sfafe-type');
delete_option('sfafe_load_feeds');
delete_site_option('sfafe_load_feeds');

