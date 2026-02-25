<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('helpc_enable');
delete_site_option('helpc_enable');
delete_option('helpc_bar_position');
delete_site_option('helpc_bar_position');
delete_option('helpc_close_color');
delete_site_option('helpc_close_color');
delete_option('helpc_donation_amount');
delete_site_option('helpc_donation_amount');
delete_option('helpc_donated_amount');
delete_site_option('helpc_donated_amount');
delete_option('helpc_donation_target');
delete_site_option('helpc_donation_target');
delete_option('helpc_progress_bg');
delete_site_option('helpc_progress_bg');
delete_option('helpc_progress');
delete_site_option('helpc_progress');
delete_option('helpc_bar_bg_color');
delete_site_option('helpc_bar_bg_color');
delete_option('helpc_bar_color');
delete_site_option('helpc_bar_color');
delete_option('helpc_bar_text');
delete_site_option('helpc_bar_text');
delete_option('helpc_charity_logo');
delete_site_option('helpc_charity_logo');

