-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('parcelrush_api_key', 'parcelrush_markup_type', 'parcelrush_markup_value', 'parcelrush_fallback_rate', 'parcelrush_fallback_label', 'woocommerce_weight_unit', 'parcelrush_rates_enabled');

