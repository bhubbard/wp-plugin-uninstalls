<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gallery_voting_usersallowed');
delete_site_option('gallery_voting_usersallowed');
delete_option('gallery_voting_max_all');
delete_site_option('gallery_voting_max_all');
delete_option('gallery_voting_max_same');
delete_site_option('gallery_voting_max_same');
delete_option('gallery_voting_tracking');
delete_site_option('gallery_voting_tracking');
delete_option('gallery_voting_enable_unvoting');
delete_site_option('gallery_voting_enable_unvoting');
delete_option('gallery_voting_css');
delete_site_option('gallery_voting_css');

