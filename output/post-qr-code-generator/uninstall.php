<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rtech_qr_height');
delete_site_option('rtech_qr_height');
delete_option('rtech_qr_width');
delete_site_option('rtech_qr_width');

