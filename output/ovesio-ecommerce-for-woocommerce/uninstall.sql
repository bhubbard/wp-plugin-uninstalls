-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ovesio_ecommerce_hash', 'ovesio_ecommerce_status', 'ovesio_ecommerce_export_duration', 'ovesio_ecommerce_order_states');

