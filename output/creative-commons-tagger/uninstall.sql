-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cct_license_lang', 'cct_layout', 'cct_photo_title');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_source_author', '_source_type', '_source_title', '_source_url', '_author_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_source_author', '_source_type', '_source_title', '_source_url', '_author_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_source_author', '_source_type', '_source_title', '_source_url', '_author_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_source_author', '_source_type', '_source_title', '_source_url', '_author_url');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

