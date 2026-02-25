<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apicheckcontactform_enable_disabled');
delete_site_option('apicheckcontactform_enable_disabled');
delete_option('apicheckcontactform_validate_number_addition');
delete_site_option('apicheckcontactform_validate_number_addition');
delete_option('apicheckcontactform_validate_email');
delete_site_option('apicheckcontactform_validate_email');
delete_option('apicheckcontactform_api_key');
delete_site_option('apicheckcontactform_api_key');
delete_option('apicheckcontactform_enabled_countries');
delete_site_option('apicheckcontactform_enabled_countries');
delete_option('apicheckcontactform_all_countries_enabled');
delete_site_option('apicheckcontactform_all_countries_enabled');

