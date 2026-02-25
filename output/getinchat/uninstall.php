<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('getinchat_channel_id');
delete_site_option('getinchat_channel_id');
delete_option('getinchat_channels');
delete_site_option('getinchat_channels');
delete_option('gic_setup_step');
delete_site_option('gic_setup_step');

