-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myaccount_page_id', 'gwats_config_page_settings', 'woocommerce_gwat_config', 'woocommerce_gwat_layout', 'gwats_add_update_endpoints');

