<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ccollapse_truncate_mode');
delete_site_option('ccollapse_truncate_mode');
delete_option('ccollapse_truncate_amount');
delete_site_option('ccollapse_truncate_amount');
delete_option('ccollapse_truncate_speed');
delete_site_option('ccollapse_truncate_speed');
delete_option('ccollapse_show_more_text');
delete_site_option('ccollapse_show_more_text');
delete_option('ccollapse_hide_text');
delete_site_option('ccollapse_hide_text');

