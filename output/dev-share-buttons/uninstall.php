<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disable_css');
delete_site_option('disable_css');
delete_option('dsb_facebook_icon_id');
delete_site_option('dsb_facebook_icon_id');
delete_option('dsb_twitter_icon_id');
delete_site_option('dsb_twitter_icon_id');
delete_option('dsb_linkedin_icon_id');
delete_site_option('dsb_linkedin_icon_id');

