-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpced_settings', 'wpced_rules', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpced_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpced_enable', 'wpced_rules');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpced_enable', 'wpced_rules');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpced_enable', 'wpced_rules');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpced_enable', 'wpced_rules');

