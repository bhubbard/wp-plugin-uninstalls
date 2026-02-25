-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpai_autocomplete_api_key', 'cpai_autocomplete_enable_for_billing', 'cpai_autocomplete_enable_for_shipping');

