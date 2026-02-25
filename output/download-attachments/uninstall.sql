-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('download_attachments_general', 'download_attachments_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_da_attachments', '_da_downloads', '_da_posts', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_da_attachments', '_da_downloads', '_da_posts', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_da_attachments', '_da_downloads', '_da_posts', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_da_attachments', '_da_downloads', '_da_posts', '_wp_attached_file');

