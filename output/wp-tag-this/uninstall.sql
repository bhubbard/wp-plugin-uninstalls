-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wptagthis_data', 'WPtagthis');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tag_this_votes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tag_this_votes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tag_this_votes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tag_this_votes');

