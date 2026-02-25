-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('affiliate-post-types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('url', 'match_case', 'boundary', 'nofollow', 'enabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('url', 'match_case', 'boundary', 'nofollow', 'enabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('url', 'match_case', 'boundary', 'nofollow', 'enabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('url', 'match_case', 'boundary', 'nofollow', 'enabled');

