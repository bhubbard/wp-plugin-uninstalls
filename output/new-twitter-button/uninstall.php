<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twitter_button_type1');
delete_site_option('twitter_button_type1');
delete_option('twitter_button_type2');
delete_site_option('twitter_button_type2');
delete_option('twitter_button_account');
delete_site_option('twitter_button_account');
delete_option('twitter_button_rt');
delete_site_option('twitter_button_rt');
delete_option('twitter_button_rec');
delete_site_option('twitter_button_rec');
delete_option('twitter_button_topstyle');
delete_site_option('twitter_button_topstyle');
delete_option('twitter_button_bottomstyle');
delete_site_option('twitter_button_bottomstyle');

