<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailbul_mid');
delete_site_option('mailbul_mid');
delete_option('mailbul_enable');
delete_site_option('mailbul_enable');
delete_option('mailbul_url');
delete_site_option('mailbul_url');
delete_option('mailbul_username');
delete_site_option('mailbul_username');
delete_option('mailbul_usertoken');
delete_site_option('mailbul_usertoken');
delete_option('mailbul_importall');
delete_site_option('mailbul_importall');

