-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cjtplusinstaller', '__existing_cjt_user', 'meta-box-order_cjtoolbox');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('__CJT-BLOCK-ID', 'closedpostboxes_cjtoolbox');
DELETE FROM wp_usermeta WHERE meta_key IN ('__CJT-BLOCK-ID', 'closedpostboxes_cjtoolbox');
DELETE FROM wp_termmeta WHERE meta_key IN ('__CJT-BLOCK-ID', 'closedpostboxes_cjtoolbox');
DELETE FROM wp_commentmeta WHERE meta_key IN ('__CJT-BLOCK-ID', 'closedpostboxes_cjtoolbox');

