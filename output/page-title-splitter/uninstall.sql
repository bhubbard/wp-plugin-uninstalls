-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pt_splitter_options', 'pt_splitter_updated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pt_splitter_output');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pt_splitter_output');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pt_splitter_output');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pt_splitter_output');

