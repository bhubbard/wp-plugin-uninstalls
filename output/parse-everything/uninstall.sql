-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('parse_settings', 'parse_templates', 'pe_period', 'parse_result');
DELETE FROM wp_usermeta WHERE meta_key IN ('parse_settings', 'parse_templates', 'pe_period', 'parse_result');
DELETE FROM wp_termmeta WHERE meta_key IN ('parse_settings', 'parse_templates', 'pe_period', 'parse_result');
DELETE FROM wp_commentmeta WHERE meta_key IN ('parse_settings', 'parse_templates', 'pe_period', 'parse_result');

