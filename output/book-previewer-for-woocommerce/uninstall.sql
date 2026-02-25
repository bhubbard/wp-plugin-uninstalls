-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpfw_version', 'bpfw_fix_conflict_read_book_addons_for_book_store', 'bpfw_installing');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bpfw_back_img');
DELETE FROM wp_usermeta WHERE meta_key IN ('bpfw_back_img');
DELETE FROM wp_termmeta WHERE meta_key IN ('bpfw_back_img');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bpfw_back_img');

