<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_nmi_pci_version');
delete_site_option('wc_nmi_pci_version');
delete_option('woocommerce_nmi_settings');
delete_site_option('woocommerce_nmi_settings');
delete_option('woocommerce_gateway_nmi_retention');
delete_site_option('woocommerce_gateway_nmi_retention');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

