-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_reco_plugin_reco_id', 'woocommerce_reco_plugin_is_active', 'woocommerce_reco_plugin_api_key', 'woocommerce_reco_plugin_send_order', 'woocommerce_reco_plugin_send_interval');

