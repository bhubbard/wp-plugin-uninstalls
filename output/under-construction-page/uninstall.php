<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('set_size');
delete_site_option('set_size');
delete_option('set_tweet');
delete_site_option('set_tweet');
delete_option('set_fb');
delete_site_option('set_fb');
delete_option('set_font');
delete_site_option('set_font');
delete_option('set_msg');
delete_site_option('set_msg');
delete_option('set_opt');
delete_site_option('set_opt');
delete_option('set_admin');
delete_site_option('set_admin');

