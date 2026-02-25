-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('infusionsoft_app_name', 'infusionsoft_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cf7_infusionsoft_addon_tag_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cf7_infusionsoft_addon_tag_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cf7_infusionsoft_addon_tag_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cf7_infusionsoft_addon_tag_key');

