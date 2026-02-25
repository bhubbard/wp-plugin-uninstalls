<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jqlb_comments');
delete_site_option('jqlb_comments');
delete_option('jqlb_automate');
delete_site_option('jqlb_automate');
delete_option('jqlb_resize_on_demand');
delete_site_option('jqlb_resize_on_demand');
delete_option('jqlb_show_download');
delete_site_option('jqlb_show_download');
delete_option('jqlb_navbarOnTop');
delete_site_option('jqlb_navbarOnTop');
delete_option('jqlb_resize_speed');
delete_site_option('jqlb_resize_speed');
delete_option('jqlb_margin_size');
delete_site_option('jqlb_margin_size');
delete_option('jqlb_help_text');
delete_site_option('jqlb_help_text');
delete_option('jqlb_loopImages');
delete_site_option('jqlb_loopImages');
delete_option('jqlb_resizeCenter');
delete_site_option('jqlb_resizeCenter');
delete_option('jqlb_link_target');
delete_site_option('jqlb_link_target');

