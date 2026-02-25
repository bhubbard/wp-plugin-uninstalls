-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aioseop_options', 'aiosp_post_title_format', 'aiosp-shorten-link-install', 'fv_simpler_seo_version', 'aioseop_category_titles', 'wp_attachment_pages_enabled', 'fv_seo_ads_disabled', 'xmlsf_sitemaps');
DELETE FROM wp_options WHERE option_name LIKE '%_deferred_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_deferred_errors';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aioseo_description', '_menu_item_object_id', '_aioseop_menulabel', '_aioseop_titleatr', '_aioseo_title', '_aioseo_keywords', '_aioseop_custom_canonical', '_aioseop_meta', '_aioseop_disable', '_aioseop_noindex', '_aioseop_nofollow', '_fv_event_date', 'title_tag', 'autometa');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aioseo_description', '_menu_item_object_id', '_aioseop_menulabel', '_aioseop_titleatr', '_aioseo_title', '_aioseo_keywords', '_aioseop_custom_canonical', '_aioseop_meta', '_aioseop_disable', '_aioseop_noindex', '_aioseop_nofollow', '_fv_event_date', 'title_tag', 'autometa');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aioseo_description', '_menu_item_object_id', '_aioseop_menulabel', '_aioseop_titleatr', '_aioseo_title', '_aioseo_keywords', '_aioseop_custom_canonical', '_aioseop_meta', '_aioseop_disable', '_aioseop_noindex', '_aioseop_nofollow', '_fv_event_date', 'title_tag', 'autometa');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aioseo_description', '_menu_item_object_id', '_aioseop_menulabel', '_aioseop_titleatr', '_aioseo_title', '_aioseo_keywords', '_aioseop_custom_canonical', '_aioseop_meta', '_aioseop_disable', '_aioseop_noindex', '_aioseop_nofollow', '_fv_event_date', 'title_tag', 'autometa');

