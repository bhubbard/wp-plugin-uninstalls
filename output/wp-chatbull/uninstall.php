<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gaxon_wpcbcp_linked');
delete_site_option('gaxon_wpcbcp_linked');
delete_option('gaxon_wpcbcp_chatbox_method');
delete_site_option('gaxon_wpcbcp_chatbox_method');
delete_option('gaxon_wpcbcp_chatbull_dir');
delete_site_option('gaxon_wpcbcp_chatbull_dir');
delete_option('gaxon_wpcbcp_widget_code');
delete_site_option('gaxon_wpcbcp_widget_code');
delete_option('gaxon_wpcbcp_enabled_chatbox');
delete_site_option('gaxon_wpcbcp_enabled_chatbox');
delete_option('gaxon_wpcbcp_pick_wpuser');
delete_site_option('gaxon_wpcbcp_pick_wpuser');
delete_option('gaxon_wpcbcp_visiblity_tpe');
delete_site_option('gaxon_wpcbcp_visiblity_tpe');
delete_option('gaxon_wpcbcp_cbwindow_pages');
delete_site_option('gaxon_wpcbcp_cbwindow_pages');

