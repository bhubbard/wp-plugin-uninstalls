<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Lrisg_title');
delete_site_option('Lrisg_title');
delete_option('Lrisg_width');
delete_site_option('Lrisg_width');
delete_option('Lrisg_height');
delete_site_option('Lrisg_height');
delete_option('Lrisg_pause');
delete_site_option('Lrisg_pause');
delete_option('Lrisg_cycles');
delete_site_option('Lrisg_cycles');
delete_option('Lrisg_persist');
delete_site_option('Lrisg_persist');
delete_option('Lrisg_slideduration');
delete_site_option('Lrisg_slideduration');
delete_option('Lrisg_random');
delete_site_option('Lrisg_random');
delete_option('Lrisg_type');
delete_site_option('Lrisg_type');
delete_option('Lrisg_Title');
delete_site_option('Lrisg_Title');

