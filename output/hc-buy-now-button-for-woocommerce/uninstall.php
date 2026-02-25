<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcbuynow-text');
delete_site_option('wcbuynow-text');
delete_option('wcbuynow-inppage');
delete_site_option('wcbuynow-inppage');
delete_option('wcbuynow-inshoppage');
delete_site_option('wcbuynow-inshoppage');
delete_option('wcbuynow-spbeforeafter');
delete_site_option('wcbuynow-spbeforeafter');
delete_option('wcbuynow-btncustomize');
delete_site_option('wcbuynow-btncustomize');
delete_option('wcbuynow-btnradius');
delete_site_option('wcbuynow-btnradius');
delete_option('wcbuynow-primaryclr');
delete_site_option('wcbuynow-primaryclr');
delete_option('wcbuynow-bgclr');
delete_site_option('wcbuynow-bgclr');
delete_option('wcbuynow-hoverclr');
delete_site_option('wcbuynow-hoverclr');
delete_option('wcbuynow-bghoverclr');
delete_site_option('wcbuynow-bghoverclr');
delete_option('wcbuynow-btngap');
delete_site_option('wcbuynow-btngap');
delete_option('wcbuynowbtn_plugin_do_activate');
delete_site_option('wcbuynowbtn_plugin_do_activate');

