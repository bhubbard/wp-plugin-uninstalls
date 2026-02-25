<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('orpl_version');
delete_site_option('orpl_version');
delete_option('orpl_currency');
delete_site_option('orpl_currency');
delete_option('orpl_tax_rate');
delete_site_option('orpl_tax_rate');
delete_option('orpl_vat_rate');
delete_site_option('orpl_vat_rate');
delete_option('orpl_currency_position');
delete_site_option('orpl_currency_position');
delete_option('orpl_date_format');
delete_site_option('orpl_date_format');
delete_option('orpl_shop_name');
delete_site_option('orpl_shop_name');
delete_option('orpl_shop_address');
delete_site_option('orpl_shop_address');
delete_option('orpl_shop_phone');
delete_site_option('orpl_shop_phone');
delete_option('orpl_settings');
delete_site_option('orpl_settings');

