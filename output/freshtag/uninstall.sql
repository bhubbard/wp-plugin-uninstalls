-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lmmvp_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lmmvp_last_modified', '_lmmvp_modifications', '_lmmvp_manual_date', '_lmmvp_last_author');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lmmvp_last_modified', '_lmmvp_modifications', '_lmmvp_manual_date', '_lmmvp_last_author');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lmmvp_last_modified', '_lmmvp_modifications', '_lmmvp_manual_date', '_lmmvp_last_author');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lmmvp_last_modified', '_lmmvp_modifications', '_lmmvp_manual_date', '_lmmvp_last_author');

