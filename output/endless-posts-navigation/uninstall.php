<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('epn_settings');
delete_site_option('epn_settings');
delete_option('epn_qrcode_hash');
delete_site_option('epn_qrcode_hash');

