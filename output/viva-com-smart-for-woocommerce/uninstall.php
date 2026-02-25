<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_vivacom_smart_settings');
delete_site_option('woocommerce_vivacom_smart_settings');

// Delete Transients
delete_transient('viva_com_smart_wc_admin_notice');
delete_site_transient('viva_com_smart_wc_admin_notice');

