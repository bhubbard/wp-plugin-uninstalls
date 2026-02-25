<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jcorgcpb_alert');
delete_site_option('jcorgcpb_alert');
delete_option('jcorgcpb_alert_message');
delete_site_option('jcorgcpb_alert_message');
delete_option('jcorgcpb_use_css');
delete_site_option('jcorgcpb_use_css');
delete_option('jcorgcpb_disable_selection');
delete_site_option('jcorgcpb_disable_selection');
delete_option('jcorgcpb_disable_right_mouse_click');
delete_site_option('jcorgcpb_disable_right_mouse_click');
delete_option('jcorgcpb_disable_keys');
delete_site_option('jcorgcpb_disable_keys');
delete_option('jcorgcpb_where_on');
delete_site_option('jcorgcpb_where_on');
delete_option('jcorgcpb_linkback');
delete_site_option('jcorgcpb_linkback');
delete_option('jcorgcpb_linkback_text');
delete_site_option('jcorgcpb_linkback_text');

