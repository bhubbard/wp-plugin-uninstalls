-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woofc_settings', 'woofc_localization', 'woocommerce_tax_total_display', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'woofc_%';

