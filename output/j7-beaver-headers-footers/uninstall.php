<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bbp_hft_license_key');
delete_site_option('bbp_hft_license_key');
delete_option('bbp_hft_license_status');
delete_site_option('bbp_hft_license_status');
delete_option('bbp_hft_license_status_info');
delete_site_option('bbp_hft_license_status_info');
delete_option('bbp_hft_license_authsite');
delete_site_option('bbp_hft_license_authsite');
delete_option('_fl_builder_user_templates_admin');
delete_site_option('_fl_builder_user_templates_admin');

