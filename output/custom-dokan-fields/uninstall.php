<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dcfpp_billing_settings');
delete_site_option('dcfpp_billing_settings');
delete_option('dcfpp_extra_settings');
delete_site_option('dcfpp_extra_settings');
delete_option('dcfpp_shipping_settings');
delete_site_option('dcfpp_shipping_settings');
delete_option('dcfpp_additional_settings');
delete_site_option('dcfpp_additional_settings');
delete_option('dcfpp_additional_fees');
delete_site_option('dcfpp_additional_fees');

