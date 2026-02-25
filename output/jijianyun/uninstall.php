<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jijianyun_options');
delete_site_option('jijianyun_options');
delete_option('jijianyun_corp_id');
delete_site_option('jijianyun_corp_id');
delete_option('jijianyun_api_secret');
delete_site_option('jijianyun_api_secret');
delete_option('jijianyun_company_name');
delete_site_option('jijianyun_company_name');
delete_option('jijianyun_company_identification');
delete_site_option('jijianyun_company_identification');
delete_option('jijianyun_user_name');
delete_site_option('jijianyun_user_name');
delete_option('jijianyun_user_identify');
delete_site_option('jijianyun_user_identify');
delete_option('jijianyun_email');
delete_site_option('jijianyun_email');
delete_option('jijianyun_mobile');
delete_site_option('jijianyun_mobile');
delete_option('jijianyun_cfg_id');
delete_site_option('jijianyun_cfg_id');

