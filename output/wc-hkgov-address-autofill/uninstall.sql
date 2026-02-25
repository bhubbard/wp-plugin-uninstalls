-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hkaf_enable_for_billing', 'hkaf_enable_for_shipping', 'hkaf_google_place_api_key', 'hkaf_enable_for_hkgov', 'hkaf_enable_for_google');

