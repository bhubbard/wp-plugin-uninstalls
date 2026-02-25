<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('onebip_vat_detail');
delete_site_option('onebip_vat_detail');
delete_option('woocommerce_onebip_settings');
delete_site_option('woocommerce_onebip_settings');

