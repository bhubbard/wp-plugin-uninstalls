<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dadata_api_key');
delete_site_option('dadata_api_key');
delete_option('dadata_woo_off');
delete_site_option('dadata_woo_off');
delete_option('dadata_use_mask');
delete_site_option('dadata_use_mask');
delete_option('dadata_locations');
delete_site_option('dadata_locations');
delete_option('dadata_count_r');
delete_site_option('dadata_count_r');
delete_option('dadata_hint');
delete_site_option('dadata_hint');
delete_option('dadata_minchars');
delete_site_option('dadata_minchars');

