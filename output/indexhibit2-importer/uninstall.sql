-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ix2_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ix2_exhibit_format');
DELETE FROM wp_usermeta WHERE meta_key IN ('ix2_exhibit_format');
DELETE FROM wp_termmeta WHERE meta_key IN ('ix2_exhibit_format');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ix2_exhibit_format');

