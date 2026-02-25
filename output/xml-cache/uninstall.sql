-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xml_cache_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_xml_cache_enabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('_xml_cache_enabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('_xml_cache_enabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_xml_cache_enabled');

