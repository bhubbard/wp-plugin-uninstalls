<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slcp_auto_open');
delete_site_option('slcp_auto_open');
delete_option('slcp_phone');
delete_site_option('slcp_phone');
delete_option('slcp_agent');
delete_site_option('slcp_agent');
delete_option('slcp_avatar');
delete_site_option('slcp_avatar');
delete_option('slcp_color');
delete_site_option('slcp_color');
delete_option('slcp_agents_list');
delete_site_option('slcp_agents_list');

