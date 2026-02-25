<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mamahack_fb_account');
delete_site_option('mamahack_fb_account');
delete_option('mamahack_tw_account');
delete_site_option('mamahack_tw_account');
delete_option('mamahack_tw_message ');
delete_site_option('mamahack_tw_message ');
delete_option('mamahack_tw_message');
delete_site_option('mamahack_tw_message');

