<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dashboard_quick_link_widget_enable');
delete_site_option('dashboard_quick_link_widget_enable');
delete_option('dashboard_quick_link_widget_title');
delete_site_option('dashboard_quick_link_widget_title');
delete_option('dashboard_quick_link_widget_header_notice');
delete_site_option('dashboard_quick_link_widget_header_notice');
delete_option('dashboard_quick_link_widget_link_list');
delete_site_option('dashboard_quick_link_widget_link_list');
delete_option('dashboard_quick_link_widget_open_link');
delete_site_option('dashboard_quick_link_widget_open_link');
delete_option('dashboard_quick_link_widget_footer_notice');
delete_site_option('dashboard_quick_link_widget_footer_notice');
delete_option('dashboard_quick_link_widget_mbox_bcolor');
delete_site_option('dashboard_quick_link_widget_mbox_bcolor');
delete_option('dashboard_quick_link_widget_mbox_fcolor');
delete_site_option('dashboard_quick_link_widget_mbox_fcolor');

