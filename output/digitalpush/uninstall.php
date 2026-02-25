<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dgp_autosend');
delete_site_option('dgp_autosend');
delete_option('dgp_api');
delete_site_option('dgp_api');
delete_option('dgp_error');
delete_site_option('dgp_error');
delete_option('dgp_key');
delete_site_option('dgp_key');
delete_option('dgp_delay');
delete_site_option('dgp_delay');
delete_option('dgp_nativerequest');
delete_site_option('dgp_nativerequest');
delete_option('dgp_inpageads');
delete_site_option('dgp_inpageads');
delete_option('dgp_type');
delete_site_option('dgp_type');
delete_option('dgp_theme');
delete_site_option('dgp_theme');
delete_option('dgp_message');
delete_site_option('dgp_message');
delete_option('dgp_title');
delete_site_option('dgp_title');
delete_option('dgp_allowbutton');
delete_site_option('dgp_allowbutton');
delete_option('dgp_denybutton');
delete_site_option('dgp_denybutton');
delete_option('dgp_bgimage');
delete_site_option('dgp_bgimage');

// Clear Cron Jobs
wp_clear_scheduled_hook('dgp_ntf_sending');

