<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('db_key');
delete_site_option('db_key');
delete_option('db_secret');
delete_site_option('db_secret');
delete_option('db_auth_token');
delete_site_option('db_auth_token');
delete_option('db_auth_token_secret');
delete_site_option('db_auth_token_secret');
delete_option('db_path');
delete_site_option('db_path');
delete_option('db_temp_path');
delete_site_option('db_temp_path');
delete_option('db_allow_ext');
delete_site_option('db_allow_ext');

