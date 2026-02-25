-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ic_reviews_settings', 'ic_revs_hide_plugin_translation_info');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rating', 'ic_review_rating', 'ic_review_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('rating', 'ic_review_rating', 'ic_review_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('rating', 'ic_review_rating', 'ic_review_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rating', 'ic_review_rating', 'ic_review_title');

