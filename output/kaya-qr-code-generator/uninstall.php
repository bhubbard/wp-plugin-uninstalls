<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpkqcg_qrcode_generator');
delete_site_option('wpkqcg_qrcode_generator');
delete_option('wpkqcg_kaya_qr_code_generator_admin_notices');
delete_site_option('wpkqcg_kaya_qr_code_generator_admin_notices');

