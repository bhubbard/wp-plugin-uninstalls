-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trp_settings', 'sgg_image-sitemap_latest_mod_time', 'sgg_image-sitemap_latest_post_id', 'sgg_video-sitemap_latest_mod_time', 'sgg_video-sitemap_latest_post_id', 'sgg_installation_time', 'wp_attachment_pages_enabled', 'polylang', 'sgg_youtube_data', 'sgg_video_api_data', 'sgg_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'sgg_disable_notice_%';
DELETE FROM wp_options WHERE option_name LIKE '%_chunks';
DELETE FROM wp_options WHERE option_name LIKE '%_time';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sitemap_exclude', '_sitemap_priority', '_sitemap_frequency', '_wp_attachment_metadata', '_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_genesis_noindex', 'autodescription-term-settings', 'mfn-builder-preview', '_genesis_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sitemap_exclude', '_sitemap_priority', '_sitemap_frequency', '_wp_attachment_metadata', '_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_genesis_noindex', 'autodescription-term-settings', 'mfn-builder-preview', '_genesis_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sitemap_exclude', '_sitemap_priority', '_sitemap_frequency', '_wp_attachment_metadata', '_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_genesis_noindex', 'autodescription-term-settings', 'mfn-builder-preview', '_genesis_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sitemap_exclude', '_sitemap_priority', '_sitemap_frequency', '_wp_attachment_metadata', '_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_genesis_noindex', 'autodescription-term-settings', 'mfn-builder-preview', '_genesis_title');

