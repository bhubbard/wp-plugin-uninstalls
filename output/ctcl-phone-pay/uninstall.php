<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ctcl_activate_phone_pay');
delete_site_option('ctcl_activate_phone_pay');
delete_option('ctcl_phone_pay_phone_number');
delete_site_option('ctcl_phone_pay_phone_number');
delete_option('ctcl_tax_rate');
delete_site_option('ctcl_tax_rate');
delete_option('ctcl_currency');
delete_site_option('ctcl_currency');

