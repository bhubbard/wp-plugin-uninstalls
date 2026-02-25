-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wds_taxonomy_meta', 'wds_blog_tabs', 'wds_subsite_manager_role', 'wds_subsite_config_id', 'wds-free-install-date', 'wds_settings_options', 'wds-features-viewed', 'active_sitewide_plugins', 'wds_checkup_options', 'wds_health_options', 'wds_sitewide_mode', 'wpmudev_apikey', 'wds_sitemap_dashboard', 'wpseo', 'wpseo_taxonomy_meta', 'wds_autolinks_options', 'wds_woocommerce_options', 'wds_breadcrumb_options', 'wds_robots_options', 'wdev-frash', 'wds-settings-save-errors');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wds_dismissed_messages', '_wds_opengraph', '_wds_twitter', '_wds_focus-keywords', '_wds_autolinks-exclude', '_wds_trimmed_excerpt', '_wds_title', '_wds_metadesc', '_wds_ignored_checks', 'dismissed_wp_pointers', 'first_name', 'last_name', 'url', 'rating', '_aioseop_disable', '_aioseop_opengraph_settings', '_aioseop_noindex', '_wds_meta-robots-noindex', '_wds_meta-robots-index', '_aioseop_nofollow', '_wds_meta-robots-nofollow', '_wds_meta-robots-follow', 'wds_primary_category');
DELETE FROM wp_usermeta WHERE meta_key IN ('wds_dismissed_messages', '_wds_opengraph', '_wds_twitter', '_wds_focus-keywords', '_wds_autolinks-exclude', '_wds_trimmed_excerpt', '_wds_title', '_wds_metadesc', '_wds_ignored_checks', 'dismissed_wp_pointers', 'first_name', 'last_name', 'url', 'rating', '_aioseop_disable', '_aioseop_opengraph_settings', '_aioseop_noindex', '_wds_meta-robots-noindex', '_wds_meta-robots-index', '_aioseop_nofollow', '_wds_meta-robots-nofollow', '_wds_meta-robots-follow', 'wds_primary_category');
DELETE FROM wp_termmeta WHERE meta_key IN ('wds_dismissed_messages', '_wds_opengraph', '_wds_twitter', '_wds_focus-keywords', '_wds_autolinks-exclude', '_wds_trimmed_excerpt', '_wds_title', '_wds_metadesc', '_wds_ignored_checks', 'dismissed_wp_pointers', 'first_name', 'last_name', 'url', 'rating', '_aioseop_disable', '_aioseop_opengraph_settings', '_aioseop_noindex', '_wds_meta-robots-noindex', '_wds_meta-robots-index', '_aioseop_nofollow', '_wds_meta-robots-nofollow', '_wds_meta-robots-follow', 'wds_primary_category');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wds_dismissed_messages', '_wds_opengraph', '_wds_twitter', '_wds_focus-keywords', '_wds_autolinks-exclude', '_wds_trimmed_excerpt', '_wds_title', '_wds_metadesc', '_wds_ignored_checks', 'dismissed_wp_pointers', 'first_name', 'last_name', 'url', 'rating', '_aioseop_disable', '_aioseop_opengraph_settings', '_aioseop_noindex', '_wds_meta-robots-noindex', '_wds_meta-robots-index', '_aioseop_nofollow', '_wds_meta-robots-nofollow', '_wds_meta-robots-follow', 'wds_primary_category');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wds_primary_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wds_primary_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wds_primary_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wds_primary_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wds_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wds_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wds_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wds_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_vimeo_thumbnail_id-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_vimeo_thumbnail_id-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_vimeo_thumbnail_id-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_vimeo_thumbnail_id-%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_blip_thumbnail_id-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_blip_thumbnail_id-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_blip_thumbnail_id-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_blip_thumbnail_id-%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wordpresstv_thumbnail_id-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wordpresstv_thumbnail_id-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wordpresstv_thumbnail_id-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wordpresstv_thumbnail_id-%';

