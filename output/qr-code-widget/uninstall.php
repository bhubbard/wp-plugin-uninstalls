<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qr_code_sc');
delete_site_option('qr_code_sc');
delete_option('qr_code_wg');
delete_site_option('qr_code_wg');
delete_option('qr_code_widget');
delete_site_option('qr_code_widget');
delete_option('widget_qrcode_widget');
delete_site_option('widget_qrcode_widget');

