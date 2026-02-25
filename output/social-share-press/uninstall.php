<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sspp_select_template');
delete_site_option('sspp_select_template');
delete_option('sspp_show_buttons');
delete_site_option('sspp_show_buttons');
delete_option('sspp_show_in_pages');
delete_site_option('sspp_show_in_pages');
delete_option('sspp_enable_disable');
delete_site_option('sspp_enable_disable');
delete_option('sspp_show_social_links');
delete_site_option('sspp_show_social_links');

