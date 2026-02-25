-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('german_posting_selected_countries', 'german_posting_api_key', 'german_posting_content', 'german_image_content');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_german_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('_german_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('_german_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_german_post');

