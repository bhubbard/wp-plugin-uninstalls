<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ngp_employment_info');
delete_site_option('ngp_employment_info');
delete_option('ngp_api_key');
delete_site_option('ngp_api_key');
delete_option('ngp_secure_url');
delete_site_option('ngp_secure_url');
delete_option('ngp_support_phone');
delete_site_option('ngp_support_phone');
delete_option('ngp_thanks_url');
delete_site_option('ngp_thanks_url');
delete_option('ngp_footer_info');
delete_site_option('ngp_footer_info');
delete_option('ngp_accept_amex');
delete_site_option('ngp_accept_amex');
delete_option('ngp_coo_api_key');
delete_site_option('ngp_coo_api_key');
delete_option('ngp_campaignid');
delete_site_option('ngp_campaignid');
delete_option('ngp_userid');
delete_site_option('ngp_userid');
delete_option('ngp_signup_thanks_url');
delete_site_option('ngp_signup_thanks_url');
delete_option('ngp_volunteer_thanks_url');
delete_site_option('ngp_volunteer_thanks_url');

