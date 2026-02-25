-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('raptive_seo_sync_state', 'raptive_seo_auth_token', 'raptive_seo_auth_expires', 'wpseo-premium-redirects-base', 'raptive_seo_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_old_date', '_wp_attachment_image_alt', 'rank_math_title', 'rank_math_description', 'rank_math_robots', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_yoast_wpseo_linkdex', '_yoast_wpseo_content_score', '_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_meta-robots-nofollow', '_yoast_wpseo_meta-robots-adv', '_yoast_wpseo_canonical');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_old_date', '_wp_attachment_image_alt', 'rank_math_title', 'rank_math_description', 'rank_math_robots', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_yoast_wpseo_linkdex', '_yoast_wpseo_content_score', '_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_meta-robots-nofollow', '_yoast_wpseo_meta-robots-adv', '_yoast_wpseo_canonical');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_old_date', '_wp_attachment_image_alt', 'rank_math_title', 'rank_math_description', 'rank_math_robots', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_yoast_wpseo_linkdex', '_yoast_wpseo_content_score', '_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_meta-robots-nofollow', '_yoast_wpseo_meta-robots-adv', '_yoast_wpseo_canonical');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_old_date', '_wp_attachment_image_alt', 'rank_math_title', 'rank_math_description', 'rank_math_robots', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_yoast_wpseo_linkdex', '_yoast_wpseo_content_score', '_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_meta-robots-nofollow', '_yoast_wpseo_meta-robots-adv', '_yoast_wpseo_canonical');

