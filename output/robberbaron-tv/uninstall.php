<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('robber_baron_tv_connected');
delete_site_option('robber_baron_tv_connected');
delete_option('robber_baron_tv_email_address');
delete_site_option('robber_baron_tv_email_address');
delete_option('robber_baron_tv_user_id');
delete_site_option('robber_baron_tv_user_id');

