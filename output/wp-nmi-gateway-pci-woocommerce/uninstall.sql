-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_nmi_pci_version', 'woocommerce_nmi_settings', 'woocommerce_gateway_nmi_retention', 'active_sitewide_plugins');

