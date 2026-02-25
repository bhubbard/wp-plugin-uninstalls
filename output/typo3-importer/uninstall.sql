-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('t3i_options', 'wordpress_api_key', 'akismet_spam_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', 't3:tt_news.uid', 't3:tt_news.url', '_aioseop_description', '_headspace_description', '_yoast_wpseo_metadesc', 'bizzthemes_description', 'thesis_description', '_aioseop_keywords', '_headspace_keywords', '_yoast_wpseo_metakeywords', 'bizzthemes_keywords', 'thesis_keywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', 't3:tt_news.uid', 't3:tt_news.url', '_aioseop_description', '_headspace_description', '_yoast_wpseo_metadesc', 'bizzthemes_description', 'thesis_description', '_aioseop_keywords', '_headspace_keywords', '_yoast_wpseo_metakeywords', 'bizzthemes_keywords', 'thesis_keywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', 't3:tt_news.uid', 't3:tt_news.url', '_aioseop_description', '_headspace_description', '_yoast_wpseo_metadesc', 'bizzthemes_description', 'thesis_description', '_aioseop_keywords', '_headspace_keywords', '_yoast_wpseo_metakeywords', 'bizzthemes_keywords', 'thesis_keywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', 't3:tt_news.uid', 't3:tt_news.url', '_aioseop_description', '_headspace_description', '_yoast_wpseo_metadesc', 'bizzthemes_description', 'thesis_description', '_aioseop_keywords', '_headspace_keywords', '_yoast_wpseo_metakeywords', 'bizzthemes_keywords', 'thesis_keywords');
DELETE FROM wp_postmeta WHERE meta_key LIKE 't3:tt_news.%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 't3:tt_news.%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 't3:tt_news.%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 't3:tt_news.%';

