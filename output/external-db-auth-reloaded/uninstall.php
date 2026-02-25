<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('external_db_type');
delete_site_option('external_db_type');
delete_option('external_host');
delete_site_option('external_host');
delete_option('external_db_port');
delete_site_option('external_db_port');
delete_option('external_db');
delete_site_option('external_db');
delete_option('external_db_user');
delete_site_option('external_db_user');
delete_option('external_db_pw');
delete_site_option('external_db_pw');
delete_option('external_db_table');
delete_site_option('external_db_table');
delete_option('external_db_namefield');
delete_site_option('external_db_namefield');
delete_option('external_db_pwfield');
delete_site_option('external_db_pwfield');
delete_option('external_db_first_name');
delete_site_option('external_db_first_name');
delete_option('external_db_last_name');
delete_site_option('external_db_last_name');
delete_option('external_db_user_url');
delete_site_option('external_db_user_url');
delete_option('external_db_user_email');
delete_site_option('external_db_user_email');
delete_option('external_db_description');
delete_site_option('external_db_description');
delete_option('external_db_aim');
delete_site_option('external_db_aim');
delete_option('external_db_yim');
delete_site_option('external_db_yim');
delete_option('external_db_jabber');
delete_site_option('external_db_jabber');
delete_option('external_db_enc');
delete_site_option('external_db_enc');
delete_option('external_db_other_enc');
delete_site_option('external_db_other_enc');
delete_option('external_db_error_msg');
delete_site_option('external_db_error_msg');
delete_option('external_db_role_bool');
delete_site_option('external_db_role_bool');
delete_option('external_db_role');
delete_site_option('external_db_role');
delete_option('external_db_role_value');
delete_site_option('external_db_role_value');
delete_option('external_db_site_url');
delete_site_option('external_db_site_url');

