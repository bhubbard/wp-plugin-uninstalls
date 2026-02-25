-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('saec_seo_systemic_last', 'saec_seo_systemic_alerts_last_sent', 'saec_seo_gsc_pages', 'saec_seo_last_notice_details');
DELETE FROM wp_options WHERE option_name LIKE 'saec_seo_gsc_state_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_saec_seo_title', '_saec_seo_description', '_saec_seo_social_image', '_saec_seo_baseline');
DELETE FROM wp_usermeta WHERE meta_key IN ('_saec_seo_title', '_saec_seo_description', '_saec_seo_social_image', '_saec_seo_baseline');
DELETE FROM wp_termmeta WHERE meta_key IN ('_saec_seo_title', '_saec_seo_description', '_saec_seo_social_image', '_saec_seo_baseline');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_saec_seo_title', '_saec_seo_description', '_saec_seo_social_image', '_saec_seo_baseline');

