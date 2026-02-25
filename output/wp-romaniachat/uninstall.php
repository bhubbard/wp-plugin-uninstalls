<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('romaniachat_nick');
delete_site_option('romaniachat_nick');
delete_option('romaniachat_server');
delete_site_option('romaniachat_server');
delete_option('romaniachat_chan');
delete_site_option('romaniachat_chan');
delete_option('romaniachat_style');
delete_site_option('romaniachat_style');
delete_option('romaniachat_height');
delete_site_option('romaniachat_height');
delete_option('romaniachat_width');
delete_site_option('romaniachat_width');

