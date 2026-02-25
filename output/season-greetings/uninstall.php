<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seasongreets_snowflakes');
delete_site_option('seasongreets_snowflakes');
delete_option('seasongreets_timeout');
delete_site_option('seasongreets_timeout');
delete_option('seasongreets_maxstepx');
delete_site_option('seasongreets_maxstepx');
delete_option('seasongreets_maxstepy');
delete_site_option('seasongreets_maxstepy');
delete_option('seasongreets_selected');
delete_site_option('seasongreets_selected');
delete_option('seasongreets_maxtime');
delete_site_option('seasongreets_maxtime');
delete_option('seasongreets_uri');
delete_site_option('seasongreets_uri');
delete_option('seasongreets_precise');
delete_site_option('seasongreets_precise');
delete_option('seasongreets_flakesize');
delete_site_option('seasongreets_flakesize');
delete_option('seasongreets_invert');
delete_site_option('seasongreets_invert');
delete_option('seasongreets_homelink');
delete_site_option('seasongreets_homelink');

