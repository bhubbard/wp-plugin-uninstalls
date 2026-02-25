-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_c2p_log');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_c2p-found', '_cp2-old-content', '_c2p-old-content');
DELETE FROM wp_usermeta WHERE meta_key IN ('_c2p-found', '_cp2-old-content', '_c2p-old-content');
DELETE FROM wp_termmeta WHERE meta_key IN ('_c2p-found', '_cp2-old-content', '_c2p-old-content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_c2p-found', '_cp2-old-content', '_c2p-old-content');

