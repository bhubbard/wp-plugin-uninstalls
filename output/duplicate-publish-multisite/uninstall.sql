-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('publish_mu_setttings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('publish_mu_site_image_id', 'rank_math_canonical_url', '_yoast_wpseo_canonical');
DELETE FROM wp_usermeta WHERE meta_key IN ('publish_mu_site_image_id', 'rank_math_canonical_url', '_yoast_wpseo_canonical');
DELETE FROM wp_termmeta WHERE meta_key IN ('publish_mu_site_image_id', 'rank_math_canonical_url', '_yoast_wpseo_canonical');
DELETE FROM wp_commentmeta WHERE meta_key IN ('publish_mu_site_image_id', 'rank_math_canonical_url', '_yoast_wpseo_canonical');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'publish_mu_site_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'publish_mu_site_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'publish_mu_site_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'publish_mu_site_%';

