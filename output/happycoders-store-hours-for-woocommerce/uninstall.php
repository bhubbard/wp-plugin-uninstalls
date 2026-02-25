<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hcsh_weekly_hours');
delete_site_option('hcsh_weekly_hours');
delete_option('hcsh_manual_close');
delete_site_option('hcsh_manual_close');
delete_option('hcsh_mode');
delete_site_option('hcsh_mode');
delete_option('hcsh_open_time');
delete_site_option('hcsh_open_time');
delete_option('hcsh_close_time');
delete_site_option('hcsh_close_time');
delete_option('hcsh_closed_message');
delete_site_option('hcsh_closed_message');

