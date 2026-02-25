<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ledo_integrator_company_access_token');
delete_site_option('ledo_integrator_company_access_token');
delete_option('ledo_integrator_settings_utm_data');
delete_site_option('ledo_integrator_settings_utm_data');

