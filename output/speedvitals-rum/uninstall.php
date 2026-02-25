<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('speedvitals_rum_site_id');
delete_site_option('speedvitals_rum_site_id');
delete_option('speedvitals_rum_script_position');
delete_site_option('speedvitals_rum_script_position');
delete_option('speedvitals_rum_script_loading');
delete_site_option('speedvitals_rum_script_loading');

