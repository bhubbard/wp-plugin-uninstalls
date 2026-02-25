-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('address_autocomplete_api_key', 'address_autocomplete_target_selectors', 'address_autocomplete_place_type', 'address_autocomplete_country');

