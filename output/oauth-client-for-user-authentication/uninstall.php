<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('user_sso');
delete_site_option('user_sso');
delete_option('oc_clientscope');
delete_site_option('oc_clientscope');
delete_option('oc_client_authorization');
delete_site_option('oc_client_authorization');
delete_option('oc_appname');
delete_site_option('oc_appname');
delete_option('oc_apptype');
delete_site_option('oc_apptype');
delete_option('settings_saved');
delete_site_option('settings_saved');
delete_option('test_configuration');
delete_site_option('test_configuration');
delete_option('test_data_format');
delete_site_option('test_data_format');
delete_option('oc_uname');
delete_site_option('oc_uname');
delete_option('oc_uemail');
delete_site_option('oc_uemail');
delete_option('oc_clientid');
delete_site_option('oc_clientid');
delete_option('oc_client_request_in_body');
delete_site_option('oc_client_request_in_body');
delete_option('oc_client_token_endpoint');
delete_site_option('oc_client_token_endpoint');
delete_option('oc_clientsecret');
delete_site_option('oc_clientsecret');
delete_option('oc_client_userinfo_endpoint');
delete_site_option('oc_client_userinfo_endpoint');
delete_option('oc_selectedserver');
delete_site_option('oc_selectedserver');
delete_option('oc_client_request_in_header');
delete_site_option('oc_client_request_in_header');
delete_option('saved_attribute_mapping');
delete_site_option('saved_attribute_mapping');
delete_option('restrictWPUserCreation');
delete_site_option('restrictWPUserCreation');
delete_option('oc_attributes_names_received');
delete_site_option('oc_attributes_names_received');
delete_option('ADgroups');
delete_site_option('ADgroups');
delete_option('reasonToRestrictWPUser');
delete_site_option('reasonToRestrictWPUser');

// Delete Transients
delete_transient('update_core');
delete_site_transient('update_core');

