<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('post_cw_api_token');
delete_site_option('post_cw_api_token');
delete_option('post_cw_roomid');
delete_site_option('post_cw_roomid');
delete_option('post_send_cwr_expert');
delete_site_option('post_send_cwr_expert');
delete_option('post_send_cwr_messege');
delete_site_option('post_send_cwr_messege');

