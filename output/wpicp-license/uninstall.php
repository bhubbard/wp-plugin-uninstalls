<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpicp_license');
delete_site_option('wpicp_license');
delete_option('wpicp_wangan');
delete_site_option('wpicp_wangan');
delete_option('wpicp_province');
delete_site_option('wpicp_province');
delete_option('wpicp_company');
delete_site_option('wpicp_company');
delete_option('wpicp_email');
delete_site_option('wpicp_email');
delete_option('wpicp_phone');
delete_site_option('wpicp_phone');
delete_option('wpicp_edi');
delete_site_option('wpicp_edi');
delete_option('wpicp_app');
delete_site_option('wpicp_app');
delete_option('wpicp_miniapp');
delete_site_option('wpicp_miniapp');
delete_option('cn_icp');
delete_site_option('cn_icp');
delete_option('cn_ga');
delete_site_option('cn_ga');

