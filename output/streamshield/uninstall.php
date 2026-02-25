<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('streamshield_tenant');
delete_site_option('streamshield_tenant');
delete_option('streamshield_key');
delete_site_option('streamshield_key');
delete_option('streamshield_secret');
delete_site_option('streamshield_secret');

