<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bat_header');
delete_site_option('bat_header');
delete_option('bat_loop');
delete_site_option('bat_loop');
delete_option('bat_sidebar');
delete_site_option('bat_sidebar');
delete_option('bat_footer');
delete_site_option('bat_footer');
delete_option('bat_comments');
delete_site_option('bat_comments');

