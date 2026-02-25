<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hsb_allowed_user_roles');
delete_site_option('hsb_allowed_user_roles');
delete_option('hsb_helpscout_form_id');
delete_site_option('hsb_helpscout_form_id');
delete_option('hsb_helpscout_subdomain');
delete_site_option('hsb_helpscout_subdomain');
delete_option('hsb_beacon_options');
delete_site_option('hsb_beacon_options');
delete_option('hsb_beacon_icon');
delete_site_option('hsb_beacon_icon');
delete_option('hsb_beacon_colour');
delete_site_option('hsb_beacon_colour');
delete_option('hsb_hide_credits');
delete_site_option('hsb_hide_credits');
delete_option('hsb_beacon_intro');
delete_site_option('hsb_beacon_intro');
delete_option('hsb_allow_attachments');
delete_site_option('hsb_allow_attachments');
delete_option('hsb_show_on_frontend');
delete_site_option('hsb_show_on_frontend');

