<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_shiip_user');
delete_site_option('wc_shiip_user');
delete_option('wc_shiip_settings_originLocation');
delete_site_option('wc_shiip_settings_originLocation');
delete_option('wc_shiip_settings_contactnumber');
delete_site_option('wc_shiip_settings_contactnumber');
delete_option('wc_shiip_settings_email');
delete_site_option('wc_shiip_settings_email');
delete_option('wc_shiip_user_token');
delete_site_option('wc_shiip_user_token');
delete_option('wc_shiip_user_name');
delete_site_option('wc_shiip_user_name');
delete_option('wc_shiip_settings_password');
delete_site_option('wc_shiip_settings_password');
delete_option('wc_shiip_exchangerate_usd');
delete_site_option('wc_shiip_exchangerate_usd');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');

