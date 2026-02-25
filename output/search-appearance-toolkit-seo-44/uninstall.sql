-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seo44_settings', 'seo44_flush_rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('seo44_title', 'seo44_description', '_seo44_enable_howto', '_yoast_wpseo_metadesc', '_aioseop_description', '_seo44_howto_step_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('seo44_title', 'seo44_description', '_seo44_enable_howto', '_yoast_wpseo_metadesc', '_aioseop_description', '_seo44_howto_step_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('seo44_title', 'seo44_description', '_seo44_enable_howto', '_yoast_wpseo_metadesc', '_aioseop_description', '_seo44_howto_step_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('seo44_title', 'seo44_description', '_seo44_enable_howto', '_yoast_wpseo_metadesc', '_aioseop_description', '_seo44_howto_step_ids');

