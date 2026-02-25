-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tmdb_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpoc_backdrops', 'wpoc_posters', 'wpoc_rating_title', 'wpoc_rating_value', 'wpoc_tax_img', 'wpoc_thumbnail_id', 'wpoc_link', 'wpoc_studio_title', 'wpoc_studio_iframe', 'wpoc_tv_data', 'wpoc_id', 'wpoc_language', 'wpoc_title', 'wpoc_tagline', 'wpoc_premiere', 'wpoc_time', 'wpoc_budget', 'tmdb_imported');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpoc_backdrops', 'wpoc_posters', 'wpoc_rating_title', 'wpoc_rating_value', 'wpoc_tax_img', 'wpoc_thumbnail_id', 'wpoc_link', 'wpoc_studio_title', 'wpoc_studio_iframe', 'wpoc_tv_data', 'wpoc_id', 'wpoc_language', 'wpoc_title', 'wpoc_tagline', 'wpoc_premiere', 'wpoc_time', 'wpoc_budget', 'tmdb_imported');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpoc_backdrops', 'wpoc_posters', 'wpoc_rating_title', 'wpoc_rating_value', 'wpoc_tax_img', 'wpoc_thumbnail_id', 'wpoc_link', 'wpoc_studio_title', 'wpoc_studio_iframe', 'wpoc_tv_data', 'wpoc_id', 'wpoc_language', 'wpoc_title', 'wpoc_tagline', 'wpoc_premiere', 'wpoc_time', 'wpoc_budget', 'tmdb_imported');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpoc_backdrops', 'wpoc_posters', 'wpoc_rating_title', 'wpoc_rating_value', 'wpoc_tax_img', 'wpoc_thumbnail_id', 'wpoc_link', 'wpoc_studio_title', 'wpoc_studio_iframe', 'wpoc_tv_data', 'wpoc_id', 'wpoc_language', 'wpoc_title', 'wpoc_tagline', 'wpoc_premiere', 'wpoc_time', 'wpoc_budget', 'tmdb_imported');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_meta';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_meta';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_meta';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_meta';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_img';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_img';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_img';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_img';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_order';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_order';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_order';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_order';

