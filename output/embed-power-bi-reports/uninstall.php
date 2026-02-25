<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mo_epbr_admin_email');
delete_site_option('mo_epbr_admin_email');
delete_option('mo_epbr_admin_password');
delete_site_option('mo_epbr_admin_password');
delete_option('mo_epbr_registration_status');
delete_site_option('mo_epbr_registration_status');
delete_option('mo_epbr_verify_customer');
delete_site_option('mo_epbr_verify_customer');
delete_option('mo_epbr_add_sso_button_wp');
delete_site_option('mo_epbr_add_sso_button_wp');
delete_option('mo_epbr_admin_phone');
delete_site_option('mo_epbr_admin_phone');
delete_option('mo_epbr_admin_customer_key');
delete_site_option('mo_epbr_admin_customer_key');
delete_option('mo_epbr_add_filters_pane');
delete_site_option('mo_epbr_add_filters_pane');
delete_option('mo_epbr_add_page_navigation');
delete_site_option('mo_epbr_add_page_navigation');
delete_option('mo_epbr_notice_message');
delete_site_option('mo_epbr_notice_message');
delete_option('mo_epbr_power_bi_url');
delete_site_option('mo_epbr_power_bi_url');
delete_option('mo_epbr_admin_api_key');
delete_site_option('mo_epbr_admin_api_key');
delete_option('mo_epbr_customer_token');
delete_site_option('mo_epbr_customer_token');

