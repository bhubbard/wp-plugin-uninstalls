<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('send_pulse_deferred_admin_notices');
delete_site_option('send_pulse_deferred_admin_notices');
delete_option('sendpulse_code');
delete_site_option('sendpulse_code');
delete_option('sendpulse_active');
delete_site_option('sendpulse_active');
delete_option('sendpulse_addinfo');
delete_site_option('sendpulse_addinfo');
delete_option('sendpulse_push_url');
delete_site_option('sendpulse_push_url');
delete_option('sendpulse_script_id');
delete_site_option('sendpulse_script_id');
delete_option('sendpulse_script_params');
delete_site_option('sendpulse_script_params');

