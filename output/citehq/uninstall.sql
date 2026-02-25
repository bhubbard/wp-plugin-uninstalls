-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('citehq_options', 'citehq_activated', 'citehq_notices', 'citehq_content', 'citehq_content_full');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_citehq_exclude', '_citehq_summary', '_wp_attachment_image_alt', '_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_aioseo_noindex', '_seopress_robots_index');
DELETE FROM wp_usermeta WHERE meta_key IN ('_citehq_exclude', '_citehq_summary', '_wp_attachment_image_alt', '_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_aioseo_noindex', '_seopress_robots_index');
DELETE FROM wp_termmeta WHERE meta_key IN ('_citehq_exclude', '_citehq_summary', '_wp_attachment_image_alt', '_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_aioseo_noindex', '_seopress_robots_index');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_citehq_exclude', '_citehq_summary', '_wp_attachment_image_alt', '_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_aioseo_noindex', '_seopress_robots_index');

