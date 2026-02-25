-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cswp_form_data', 'cswp_manual_rate', 'cswp_currency_button_type', 'cswp_apirate_values', 'cswp_display', 'apivalidate', 'apinotfree');

