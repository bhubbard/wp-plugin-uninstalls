-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nlws_ehfi_settings', 'nlws_ehfi_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nlws_efhi');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nlws_efhi');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nlws_efhi');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nlws_efhi');

