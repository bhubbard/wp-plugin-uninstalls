<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fc_option_calendar');
delete_site_option('fc_option_calendar');
delete_option('fc_option_feed1');
delete_site_option('fc_option_feed1');
delete_option('fc_option_feed2');
delete_site_option('fc_option_feed2');
delete_option('fc_option_feed3');
delete_site_option('fc_option_feed3');
delete_option('fc2_option_calendar');
delete_site_option('fc2_option_calendar');
delete_option('fc2_option_feed1');
delete_site_option('fc2_option_feed1');
delete_option('fc2_option_feed2');
delete_site_option('fc2_option_feed2');
delete_option('fc2_option_feed3');
delete_site_option('fc2_option_feed3');
delete_option('defaultview1');
delete_site_option('defaultview1');
delete_option('defaultview2');
delete_site_option('defaultview2');

