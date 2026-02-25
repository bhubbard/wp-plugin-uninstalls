-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nakiedy_token', 'nakiedy_url', 'nakiedy_width', 'nakiedy_height');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpn_meta_value_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpn_meta_value_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpn_meta_value_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpn_meta_value_key');

