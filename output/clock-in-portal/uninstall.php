<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cip_settings');
delete_site_option('cip_settings');
delete_option('wl_cip_setup_wizard');
delete_site_option('wl_cip_setup_wizard');
delete_option('cip_staff_request');
delete_site_option('cip_staff_request');
delete_option('cip_official_holidays');
delete_site_option('cip_official_holidays');
delete_option('cip_staff_event_request');
delete_site_option('cip_staff_event_request');

