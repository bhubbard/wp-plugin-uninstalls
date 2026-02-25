<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lord_total_visitor');
delete_site_option('lord_total_visitor');
delete_option('lordlinus_show_ip');
delete_site_option('lordlinus_show_ip');
delete_option('lordlinus_show_total');
delete_site_option('lordlinus_show_total');

