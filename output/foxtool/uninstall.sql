-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('foxtool_font_settings', 'foxtool_settings', 'woocommerce_currency', 'foxtool_ads_settings', 'foxtool_code_settings', 'foxtool_debug_settings', 'foxtool_extend_settings', 'foxtool_fontset_settings', 'foxtool_gindex_settings', 'foxtool_notify_settings', 'foxtool_redirects_settings', 'foxtool_search_settings', 'foxtool_shortcode_settings', 'foxtool_toc_settings', 'foxtool_index_count');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'toc_status', 'foxtoolpic');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'toc_status', 'foxtoolpic');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'toc_status', 'foxtoolpic');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'toc_status', 'foxtoolpic');

