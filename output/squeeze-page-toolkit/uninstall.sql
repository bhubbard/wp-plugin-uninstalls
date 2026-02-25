-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sptk_permalink_check');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sptk_associated_page_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sptk_associated_page_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sptk_associated_page_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sptk_associated_page_id');

