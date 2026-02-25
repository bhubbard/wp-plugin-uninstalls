-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dynamic_select_for_acf_advanced_dynamic_selector_options');

