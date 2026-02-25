-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awcpt_general_settings', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('awcpt_data', 'awcpt_query');
DELETE FROM wp_usermeta WHERE meta_key IN ('awcpt_data', 'awcpt_query');
DELETE FROM wp_termmeta WHERE meta_key IN ('awcpt_data', 'awcpt_query');
DELETE FROM wp_commentmeta WHERE meta_key IN ('awcpt_data', 'awcpt_query');

