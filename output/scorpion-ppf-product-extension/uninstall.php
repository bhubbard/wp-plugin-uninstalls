<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scorpion_ppf_product_sku');
delete_site_option('scorpion_ppf_product_sku');
delete_option('scorpion_ppf_api_address');
delete_site_option('scorpion_ppf_api_address');
delete_option('scorpion_ppf_token');
delete_site_option('scorpion_ppf_token');

