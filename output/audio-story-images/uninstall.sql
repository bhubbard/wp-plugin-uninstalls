-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('asu_debuglogs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_asi_link', '_asi_autoplay');
DELETE FROM wp_usermeta WHERE meta_key IN ('_asi_link', '_asi_autoplay');
DELETE FROM wp_termmeta WHERE meta_key IN ('_asi_link', '_asi_autoplay');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_asi_link', '_asi_autoplay');

