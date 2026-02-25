-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vonseowp_settings', 'vonseowp_404_log', 'vonseowp_indexnow_key', 'vonseowp_indexnow_file', 'vonseowp_flush_sitemap');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_vonseowp_title', '_vonseowp_description', '_vonseowp_keywords', '_vonseowp_image', '_vonseowp_noindex', '_vonseowp_schema_type', '_vonseowp_rating', '_vonseowp_faq', '_vonseowp_video', '_vonseowp_social_title', '_vonseowp_social_desc');
DELETE FROM wp_usermeta WHERE meta_key IN ('_vonseowp_title', '_vonseowp_description', '_vonseowp_keywords', '_vonseowp_image', '_vonseowp_noindex', '_vonseowp_schema_type', '_vonseowp_rating', '_vonseowp_faq', '_vonseowp_video', '_vonseowp_social_title', '_vonseowp_social_desc');
DELETE FROM wp_termmeta WHERE meta_key IN ('_vonseowp_title', '_vonseowp_description', '_vonseowp_keywords', '_vonseowp_image', '_vonseowp_noindex', '_vonseowp_schema_type', '_vonseowp_rating', '_vonseowp_faq', '_vonseowp_video', '_vonseowp_social_title', '_vonseowp_social_desc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_vonseowp_title', '_vonseowp_description', '_vonseowp_keywords', '_vonseowp_image', '_vonseowp_noindex', '_vonseowp_schema_type', '_vonseowp_rating', '_vonseowp_faq', '_vonseowp_video', '_vonseowp_social_title', '_vonseowp_social_desc');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_vonseowp_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_vonseowp_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_vonseowp_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_vonseowp_%';

