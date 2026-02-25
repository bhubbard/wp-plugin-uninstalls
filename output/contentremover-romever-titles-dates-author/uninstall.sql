-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_contentremover_hide_title', '_contentremover_hide_date', '_contentremover_hide_author');
DELETE FROM wp_usermeta WHERE meta_key IN ('_contentremover_hide_title', '_contentremover_hide_date', '_contentremover_hide_author');
DELETE FROM wp_termmeta WHERE meta_key IN ('_contentremover_hide_title', '_contentremover_hide_date', '_contentremover_hide_author');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_contentremover_hide_title', '_contentremover_hide_date', '_contentremover_hide_author');

