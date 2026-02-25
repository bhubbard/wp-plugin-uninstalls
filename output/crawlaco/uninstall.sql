-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crawlaco_size_attr_id', 'crawlaco_color_attr_id', 'crawlaco_brand_attr_id', 'crawlaco_wc_api_keys', 'crawlaco_setup_step', 'crawlaco_website_key', 'crawlaco_setup_complete', 'crawlaco_wp_api_key', 'crawlaco_plugin_activated', 'crawlaco_mapped_attributes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('provider_url', 'is_archived', '_yoast_wpseo_focuskw', '_custom_yoast_keywords', '_yoast_wpseo_metadesc', '_yoast_wpseo_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('provider_url', 'is_archived', '_yoast_wpseo_focuskw', '_custom_yoast_keywords', '_yoast_wpseo_metadesc', '_yoast_wpseo_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('provider_url', 'is_archived', '_yoast_wpseo_focuskw', '_custom_yoast_keywords', '_yoast_wpseo_metadesc', '_yoast_wpseo_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('provider_url', 'is_archived', '_yoast_wpseo_focuskw', '_custom_yoast_keywords', '_yoast_wpseo_metadesc', '_yoast_wpseo_title');

