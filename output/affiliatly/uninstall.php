<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('affiliatly_admin_code');
delete_site_option('affiliatly_admin_code');
delete_option('affiliatly_security_hash');
delete_site_option('affiliatly_security_hash');
delete_option('alg_currency_switcher_currency_shop_default');
delete_site_option('alg_currency_switcher_currency_shop_default');
delete_option('affiliatly_discount_link_status');
delete_site_option('affiliatly_discount_link_status');
delete_option('affiliatly_discount_url_parameter');
delete_site_option('affiliatly_discount_url_parameter');

