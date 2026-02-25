<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('KVfFTP_ftplist');
delete_site_option('KVfFTP_ftplist');
delete_option('KVfFTP_numserver');
delete_site_option('KVfFTP_numserver');
delete_option('KVfFTP_server');
delete_site_option('KVfFTP_server');
delete_option('KVfFTP_user');
delete_site_option('KVfFTP_user');
delete_option('KVfFTP_pass');
delete_site_option('KVfFTP_pass');
delete_option('KVfFTP_url');
delete_site_option('KVfFTP_url');

