<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('freshmarketer_project_code');
delete_site_option('freshmarketer_project_code');
delete_option('freshmarketer_token');
delete_site_option('freshmarketer_token');
delete_option('freshmarketer_auth_token');
delete_site_option('freshmarketer_auth_token');
delete_option('freshmarketer_org_id');
delete_site_option('freshmarketer_org_id');
delete_option('freshmarketer_project_id');
delete_site_option('freshmarketer_project_id');
delete_option('freshmarketer_user');
delete_site_option('freshmarketer_user');
delete_option('freshmarketer_user_id');
delete_site_option('freshmarketer_user_id');
delete_option('freshmarketer_url');
delete_site_option('freshmarketer_url');

