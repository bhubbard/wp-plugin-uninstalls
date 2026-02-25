<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('santa_speed');
delete_site_option('santa_speed');
delete_option('santa_style');
delete_site_option('santa_style');
delete_option('santa_size');
delete_site_option('santa_size');
delete_option('santa_direction');
delete_site_option('santa_direction');

