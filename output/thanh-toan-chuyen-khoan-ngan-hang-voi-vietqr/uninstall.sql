-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ttckvsbh_accounts', 'ttckvsbh_rd_order', 'woocommerce_ttckvsbh_settings', 'ttckvsbh_client_id', 'ttckvsbh_api_key');

