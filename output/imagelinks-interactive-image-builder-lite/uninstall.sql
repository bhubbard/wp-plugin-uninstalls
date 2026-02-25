-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('imagelinks_db_version', 'imagelinks_activated', 'imagelinks_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('imgl-meta-imagelinks-cfg');
DELETE FROM wp_usermeta WHERE meta_key IN ('imgl-meta-imagelinks-cfg');
DELETE FROM wp_termmeta WHERE meta_key IN ('imgl-meta-imagelinks-cfg');
DELETE FROM wp_commentmeta WHERE meta_key IN ('imgl-meta-imagelinks-cfg');

