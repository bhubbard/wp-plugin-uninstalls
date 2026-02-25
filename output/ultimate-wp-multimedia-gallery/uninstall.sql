-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmg_db_version', 'social-media-hastag', 'lightBoxType', 'youtube-chaneel-id', 'wpmg-filter-align', 'filter-wrapper-bg', 'filter-text-color', 'filter-bg-color', 'filter-border-color', 'act-filter-text-color', 'act-filter-bg-color', 'act-filter-border-color', 'paginate-text-color', 'paginate-bg-color', 'act-paginate-text-color', 'act-paginate-bg-color');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_dt_sidebar_position', '_dt_header_title', '_yoast_wpseo_opengraph-title', '_yoast_wpseo_opengraph-description', '_yoast_wpseo_opengraph-image', '_yoast_wpseo_twitter-title', '_yoast_wpseo_twitter-description', '_yoast_wpseo_twitter-image');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_dt_sidebar_position', '_dt_header_title', '_yoast_wpseo_opengraph-title', '_yoast_wpseo_opengraph-description', '_yoast_wpseo_opengraph-image', '_yoast_wpseo_twitter-title', '_yoast_wpseo_twitter-description', '_yoast_wpseo_twitter-image');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_dt_sidebar_position', '_dt_header_title', '_yoast_wpseo_opengraph-title', '_yoast_wpseo_opengraph-description', '_yoast_wpseo_opengraph-image', '_yoast_wpseo_twitter-title', '_yoast_wpseo_twitter-description', '_yoast_wpseo_twitter-image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_dt_sidebar_position', '_dt_header_title', '_yoast_wpseo_opengraph-title', '_yoast_wpseo_opengraph-description', '_yoast_wpseo_opengraph-image', '_yoast_wpseo_twitter-title', '_yoast_wpseo_twitter-description', '_yoast_wpseo_twitter-image');

