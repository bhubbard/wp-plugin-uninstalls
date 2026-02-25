<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('suc_active');
delete_site_option('suc_active');
delete_option('suc_by_role');
delete_site_option('suc_by_role');
delete_option('suc_role_to_redirect');
delete_site_option('suc_role_to_redirect');
delete_option('suc_ip_whitelist');
delete_site_option('suc_ip_whitelist');

