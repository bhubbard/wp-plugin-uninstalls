<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ext_db_type');
delete_site_option('ext_db_type');
delete_option('ext_db_mdb2_path');
delete_site_option('ext_db_mdb2_path');
delete_option('ext_host');
delete_site_option('ext_host');
delete_option('ext_db_port');
delete_site_option('ext_db_port');
delete_option('ext_db');
delete_site_option('ext_db');
delete_option('ext_table');
delete_site_option('ext_table');
delete_option('ext_access_type');
delete_site_option('ext_access_type');
delete_option('ext_db_user');
delete_site_option('ext_db_user');
delete_option('ext_db_pw');
delete_site_option('ext_db_pw');
delete_option('ext_db_other_enc');
delete_site_option('ext_db_other_enc');
delete_option('ext_db_site_url');
delete_site_option('ext_db_site_url');
delete_option('ext_db_error_msg');
delete_site_option('ext_db_error_msg');

