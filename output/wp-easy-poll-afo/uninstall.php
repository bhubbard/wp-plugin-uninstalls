<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('poll_result_after_it_ends');
delete_site_option('poll_result_after_it_ends');
delete_option('poll_share_enable_facebook');
delete_site_option('poll_share_enable_facebook');
delete_option('poll_share_enable_twitter');
delete_site_option('poll_share_enable_twitter');
delete_option('poll_share_enable_google');
delete_site_option('poll_share_enable_google');
delete_option('poll_share_enable_linkedin');
delete_site_option('poll_share_enable_linkedin');
delete_option('poll_share_enable_email');
delete_site_option('poll_share_enable_email');

