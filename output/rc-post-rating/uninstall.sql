-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rcpr_post_rating_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rcpr_post_rating_up', 'rcpr_post_rating_down');
DELETE FROM wp_usermeta WHERE meta_key IN ('rcpr_post_rating_up', 'rcpr_post_rating_down');
DELETE FROM wp_termmeta WHERE meta_key IN ('rcpr_post_rating_up', 'rcpr_post_rating_down');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rcpr_post_rating_up', 'rcpr_post_rating_down');

