<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aisp_custom_payment_method_1_enabled');
delete_site_option('aisp_custom_payment_method_1_enabled');
delete_option('aisp_custom_payment_method_2_enabled');
delete_site_option('aisp_custom_payment_method_2_enabled');
delete_option('aisp_custom_payment_method_3_enabled');
delete_site_option('aisp_custom_payment_method_3_enabled');

