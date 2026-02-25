<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('banned_options');
delete_site_option('banned_options');
delete_option('banned_ips');
delete_site_option('banned_ips');
delete_option('banned_ips_range');
delete_site_option('banned_ips_range');
delete_option('banned_hosts');
delete_site_option('banned_hosts');
delete_option('banned_referers');
delete_site_option('banned_referers');
delete_option('banned_user_agents');
delete_site_option('banned_user_agents');
delete_option('banned_exclude_ips');
delete_site_option('banned_exclude_ips');
delete_option('banned_message');
delete_site_option('banned_message');
delete_option('banned_stats');
delete_site_option('banned_stats');

