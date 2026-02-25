<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('impact_existing_user');
delete_site_option('impact_existing_user');
delete_option('impact_request_value');
delete_site_option('impact_request_value');
delete_option('impact_settings_option_name');
delete_site_option('impact_settings_option_name');
delete_option('impact_integration_delete_option_name');
delete_site_option('impact_integration_delete_option_name');

