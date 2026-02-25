-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mhfgfwc_rules_rev', 'mhfgfwc_button_styles', 'mhfgfwc_settings');

