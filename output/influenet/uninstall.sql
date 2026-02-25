-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('influenet_api_key', 'influenet_author_id', 'influenet_author');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('meta_influenet');
DELETE FROM wp_usermeta WHERE meta_key IN ('meta_influenet');
DELETE FROM wp_termmeta WHERE meta_key IN ('meta_influenet');
DELETE FROM wp_commentmeta WHERE meta_key IN ('meta_influenet');

