-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7_robly_settings', 'robly_sublists', 'robly_fields');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cf7_robly');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cf7_robly');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cf7_robly');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cf7_robly');

