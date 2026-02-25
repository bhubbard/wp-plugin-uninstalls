-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('npfw_my_option_name', 'languague', 'api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_weight', '_length', '_width', '_height');
DELETE FROM wp_usermeta WHERE meta_key IN ('_weight', '_length', '_width', '_height');
DELETE FROM wp_termmeta WHERE meta_key IN ('_weight', '_length', '_width', '_height');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_weight', '_length', '_width', '_height');

