-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('err_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('emoji_reaction_rating_count', 'emoji_reaction_rating_total');
DELETE FROM wp_usermeta WHERE meta_key IN ('emoji_reaction_rating_count', 'emoji_reaction_rating_total');
DELETE FROM wp_termmeta WHERE meta_key IN ('emoji_reaction_rating_count', 'emoji_reaction_rating_total');
DELETE FROM wp_commentmeta WHERE meta_key IN ('emoji_reaction_rating_count', 'emoji_reaction_rating_total');

