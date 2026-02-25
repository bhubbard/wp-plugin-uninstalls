<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_betawooage_checkbox');
delete_site_option('woocommerce_betawooage_checkbox');
delete_option('woocommerce_betawooage_multilanguage');
delete_site_option('woocommerce_betawooage_multilanguage');
delete_option('woocommerce_betawooage_checkboxemessage');
delete_site_option('woocommerce_betawooage_checkboxemessage');
delete_option('woocommerce_betawooage_failuremessage');
delete_site_option('woocommerce_betawooage_failuremessage');

