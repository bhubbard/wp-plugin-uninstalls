<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_mxmpotm_custom_markup_notice');
delete_site_option('_mxmpotm_custom_markup_notice');
delete_option('_mxmpotm_alphabet_order_notice');
delete_site_option('_mxmpotm_alphabet_order_notice');
delete_option('mx_google_map_api_key');
delete_site_option('mx_google_map_api_key');
delete_option('mxmpotm_flush_rewrite_rules');
delete_site_option('mxmpotm_flush_rewrite_rules');

