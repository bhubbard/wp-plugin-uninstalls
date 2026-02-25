<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('optinable_remove_data_uninstall');
delete_site_option('optinable_remove_data_uninstall');
delete_option('optinable_data_sharing');
delete_site_option('optinable_data_sharing');
delete_option('optinable_disable_tracking');
delete_site_option('optinable_disable_tracking');
delete_option('optinable_pingdom');
delete_site_option('optinable_pingdom');
delete_option('_optinable_joined_list');
delete_site_option('_optinable_joined_list');
delete_option('optinable_version');
delete_site_option('optinable_version');
delete_option('optinable_db_version');
delete_site_option('optinable_db_version');
delete_option('optinable_installed_date');
delete_site_option('optinable_installed_date');
delete_option('optinable_pro_installed');
delete_site_option('optinable_pro_installed');
delete_option('optinable_rating_data');
delete_site_option('optinable_rating_data');
delete_option('optinable_mailchimp_api_key');
delete_site_option('optinable_mailchimp_api_key');
delete_option('optinable_activecampaign_api_url');
delete_site_option('optinable_activecampaign_api_url');
delete_option('optinable_activecampaign_api_key');
delete_site_option('optinable_activecampaign_api_key');
delete_option('optinable_mailerlite_api_key');
delete_site_option('optinable_mailerlite_api_key');
delete_option('optinable_aweber_refresh_token');
delete_site_option('optinable_aweber_refresh_token');
delete_option('optinable_aweber_auth_code');
delete_site_option('optinable_aweber_auth_code');
delete_option('optinable_aweber_account_id');
delete_site_option('optinable_aweber_account_id');
delete_option('optinable_aweber_token');
delete_site_option('optinable_aweber_token');

