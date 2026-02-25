<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tims_nso_login_type');
delete_site_option('tims_nso_login_type');
delete_option('tims_nso_debug_log');
delete_site_option('tims_nso_debug_log');
delete_option('tims_persistent_data_type');
delete_site_option('tims_persistent_data_type');
delete_option('tims_nso_address');
delete_site_option('tims_nso_address');
delete_option('tims_nso_client_id');
delete_site_option('tims_nso_client_id');
delete_option('tims_nso_client_secret');
delete_site_option('tims_nso_client_secret');
delete_option('tims_nso_match');
delete_site_option('tims_nso_match');
delete_option('tims_nso_create_account');
delete_site_option('tims_nso_create_account');
delete_option('tims_nso_default_role');
delete_site_option('tims_nso_default_role');
delete_option('tims_nso_group_link');
delete_site_option('tims_nso_group_link');
delete_option('tims_nso_default_group_link_role');
delete_site_option('tims_nso_default_group_link_role');
delete_option('tims_nso_redirect_url');
delete_site_option('tims_nso_redirect_url');
delete_option('tims_nso_login_button');
delete_site_option('tims_nso_login_button');
delete_option('tims_nso_login_button_text');
delete_site_option('tims_nso_login_button_text');

