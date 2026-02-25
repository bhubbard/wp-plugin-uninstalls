<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xloyalty_notice_dismissed');
delete_site_option('xloyalty_notice_dismissed');
delete_option('xloyalty_license_key');
delete_site_option('xloyalty_license_key');
delete_option('xloyalty_registration_company');
delete_site_option('xloyalty_registration_company');
delete_option('xloyalty_registration_email');
delete_site_option('xloyalty_registration_email');
delete_option('xloyalty_points_per_euro');
delete_site_option('xloyalty_points_per_euro');
delete_option('xloyalty_conversion_rate');
delete_site_option('xloyalty_conversion_rate');

