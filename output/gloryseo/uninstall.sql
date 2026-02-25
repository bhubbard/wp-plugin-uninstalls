-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gloryseo_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gloryseo_focus_keyword', '_gloryseo_meta_title', '_gloryseo_meta_description', '_gloryseo_seo_score', '_gloryseo_og_image', '_gloryseo_twitter_card');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gloryseo_focus_keyword', '_gloryseo_meta_title', '_gloryseo_meta_description', '_gloryseo_seo_score', '_gloryseo_og_image', '_gloryseo_twitter_card');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gloryseo_focus_keyword', '_gloryseo_meta_title', '_gloryseo_meta_description', '_gloryseo_seo_score', '_gloryseo_og_image', '_gloryseo_twitter_card');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gloryseo_focus_keyword', '_gloryseo_meta_title', '_gloryseo_meta_description', '_gloryseo_seo_score', '_gloryseo_og_image', '_gloryseo_twitter_card');

