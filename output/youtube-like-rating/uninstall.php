<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ylr_guest_allowed');
delete_site_option('ylr_guest_allowed');
delete_option('ylr_show_vote_on');
delete_site_option('ylr_show_vote_on');

