-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_prices_include_tax', 'CHANNELENGINE_SCHEMA_VERSION', 'active_sitewide_plugins', '_channel_engine_order_save_note', '_channel_engine_order_save_success');

