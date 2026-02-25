-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('saved_cats', 'current_mon', 'api_key', 'dyc_api_type', 'auto_up', 'feat_ured2', 'hide_images', 'feat_ured', 'custom_date_key_dyn_pst', 'terms_of_use', 'hide_metadata', 'canonical_metadata', 'content_css', 'post_start_date', 'disclaimer_summary', 'disclaimer_article');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('times', 'meta_keywords', 'meta_description', 'post_start_date', 'category_shortcode', 'category_slug', 'canonical_url', 'post_version', 'dynmaicpost_id', '_thumbnail_ext_url', 'current_mon', '_thumbnail_id', 'thumbnail_id', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('times', 'meta_keywords', 'meta_description', 'post_start_date', 'category_shortcode', 'category_slug', 'canonical_url', 'post_version', 'dynmaicpost_id', '_thumbnail_ext_url', 'current_mon', '_thumbnail_id', 'thumbnail_id', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('times', 'meta_keywords', 'meta_description', 'post_start_date', 'category_shortcode', 'category_slug', 'canonical_url', 'post_version', 'dynmaicpost_id', '_thumbnail_ext_url', 'current_mon', '_thumbnail_id', 'thumbnail_id', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('times', 'meta_keywords', 'meta_description', 'post_start_date', 'category_shortcode', 'category_slug', 'canonical_url', 'post_version', 'dynmaicpost_id', '_thumbnail_ext_url', 'current_mon', '_thumbnail_id', 'thumbnail_id', '_wp_attached_file');

