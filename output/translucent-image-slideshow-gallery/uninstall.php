<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('TISG_width');
delete_site_option('TISG_width');
delete_option('TISG_height');
delete_site_option('TISG_height');
delete_option('TISG_delay');
delete_site_option('TISG_delay');
delete_option('TISG_speed');
delete_site_option('TISG_speed');
delete_option('TISG_dir');
delete_site_option('TISG_dir');
delete_option('TISG_link');
delete_site_option('TISG_link');
delete_option('TISG_title');
delete_site_option('TISG_title');
delete_option('TISG_dir_1');
delete_site_option('TISG_dir_1');
delete_option('TISG_link_1');
delete_site_option('TISG_link_1');
delete_option('TISG_dir_2');
delete_site_option('TISG_dir_2');
delete_option('TISG_link_2');
delete_site_option('TISG_link_2');
delete_option('TISG_dir_3');
delete_site_option('TISG_dir_3');
delete_option('TISG_link_3');
delete_site_option('TISG_link_3');
delete_option('TISG_dir_4');
delete_site_option('TISG_dir_4');
delete_option('TISG_link_4');
delete_site_option('TISG_link_4');

