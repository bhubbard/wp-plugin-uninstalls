<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crypto_converter_coins');
delete_site_option('crypto_converter_coins');
delete_option('crypto_converter_fiat');
delete_site_option('crypto_converter_fiat');
delete_option('crypto_converter_all');
delete_site_option('crypto_converter_all');
delete_option('crypto_converter_footer');
delete_site_option('crypto_converter_footer');
delete_option('crypto_converter_text_color');
delete_site_option('crypto_converter_text_color');
delete_option('crypto_converter_change_color');
delete_site_option('crypto_converter_change_color');
delete_option('crypto_converter_box_color');
delete_site_option('crypto_converter_box_color');

