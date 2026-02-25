-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rank-math-options-titles', 'wpseo_taxonomy_meta', 'yoast_migrations_free', 'auto_update_plugins', 'wpseo_ms', 'wpseo_xml', 'wpseo_titles', 'wpseo_permalinks', 'wpseo_rss', 'wpseo_internallinks', 'whip_dismiss_timestamp', 'wpseo_recalibration_beta_mailinglist_subscription', 'wpseo_ryte', 'wpseo_onpage', 'wpseo', 'wpseo_license_server_version', 'wpseo_social', 'wpseo_premium', 'rewrite_rules', 'wpseo_indexation', 'seo_woo_use_third_party_data', 'settings_errors');
DELETE FROM wp_options WHERE option_name LIKE 'wpseo_dismiss_%';
DELETE FROM wp_options WHERE option_name LIKE '%_robots';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_profile_updated', 'wpseo_title', 'wpseo_metadesc', 'wpseo_pronouns', 'wpseo_noindex_author', 'wpseo_content_analysis_disable', 'wpseo_keyword_analysis_disable', 'wpseo_inclusive_language_analysis_disable', '_aioseop_opengraph_settings', '_yoast_wpseo_meta-robots-adv', '_seop_settings', '_seop_kw_1', '_seop_kw_2', '_seop_kw_3', '_sq_post_keyword', '_wpseo_edit_robots', '_yoast_settings_introduction', '_wp_attachment_image_alt', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_profile_updated', 'wpseo_title', 'wpseo_metadesc', 'wpseo_pronouns', 'wpseo_noindex_author', 'wpseo_content_analysis_disable', 'wpseo_keyword_analysis_disable', 'wpseo_inclusive_language_analysis_disable', '_aioseop_opengraph_settings', '_yoast_wpseo_meta-robots-adv', '_seop_settings', '_seop_kw_1', '_seop_kw_2', '_seop_kw_3', '_sq_post_keyword', '_wpseo_edit_robots', '_yoast_settings_introduction', '_wp_attachment_image_alt', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_profile_updated', 'wpseo_title', 'wpseo_metadesc', 'wpseo_pronouns', 'wpseo_noindex_author', 'wpseo_content_analysis_disable', 'wpseo_keyword_analysis_disable', 'wpseo_inclusive_language_analysis_disable', '_aioseop_opengraph_settings', '_yoast_wpseo_meta-robots-adv', '_seop_settings', '_seop_kw_1', '_seop_kw_2', '_seop_kw_3', '_sq_post_keyword', '_wpseo_edit_robots', '_yoast_settings_introduction', '_wp_attachment_image_alt', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_profile_updated', 'wpseo_title', 'wpseo_metadesc', 'wpseo_pronouns', 'wpseo_noindex_author', 'wpseo_content_analysis_disable', 'wpseo_keyword_analysis_disable', 'wpseo_inclusive_language_analysis_disable', '_aioseop_opengraph_settings', '_yoast_wpseo_meta-robots-adv', '_seop_settings', '_seop_kw_1', '_seop_kw_2', '_seop_kw_3', '_sq_post_keyword', '_wpseo_edit_robots', '_yoast_settings_introduction', '_wp_attachment_image_alt', '_wp_attached_file');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpseo_dismiss_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpseo_dismiss_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpseo_dismiss_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpseo_dismiss_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_yoast_wpseo_meta-robots-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_yoast_wpseo_meta-robots-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_yoast_wpseo_meta-robots-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_yoast_wpseo_meta-robots-%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpseo-remove-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpseo-remove-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpseo-remove-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpseo-remove-%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%meta-robots-noindex';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%meta-robots-noindex';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%meta-robots-noindex';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%meta-robots-noindex';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%meta-robots-nofollow';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%meta-robots-nofollow';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%meta-robots-nofollow';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%meta-robots-nofollow';

