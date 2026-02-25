-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('social_author_box_settings', 'social_authorbox_facebook', 'social_authorbox_twitter', 'social_authorbox_googleplus', 'social_authorbox_linkedin');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('author_desc');
DELETE FROM wp_usermeta WHERE meta_key IN ('author_desc');
DELETE FROM wp_termmeta WHERE meta_key IN ('author_desc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('author_desc');

