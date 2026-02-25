-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ure_users_without_role', 'ure_caps_columns_quant', 'ure_caps_readable', 'ure_show_deprecated_caps');

