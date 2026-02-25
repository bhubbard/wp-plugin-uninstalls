<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aga_language');
delete_site_option('aga_language');
delete_option('aga_print_settings');
delete_site_option('aga_print_settings');
delete_option('aga_ads_id');
delete_site_option('aga_ads_id');
delete_option('aga_ads_chanel');
delete_site_option('aga_ads_chanel');
delete_option('ai_space');
delete_site_option('ai_space');

