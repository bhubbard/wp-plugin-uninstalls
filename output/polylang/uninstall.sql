-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pll_language_taxonomies', 'pll_language_from_content_available', 'pll_dismissed_notices', 'wp_attachment_pages_enabled', 'active_sitewide_plugins', 'polylang_wpml_strings', 'rewrite_rules', 'polylang', 'dm_no_primary_domain', 'dm_301_redirect', 'polylang_licenses', 'widget_polylang', '_transient_pll_languages_list', 'update_plugins', 'pll_languages_list', 'featured_content_ids', 'pll_activation_redirect', 'settings_errors');
DELETE FROM wp_options WHERE option_name LIKE '_transient_%';
DELETE FROM wp_options WHERE option_name LIKE 'default_%';
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pll_filter_content', '_pll_menu_item', 'pll_dismissed_notices', '_wp_attachment_image_alt', '_menu_item_menu_item_parent', '_pll_strings_translations', 'fallback', 'amazonS3_info', 'as3cf_filesize_total');
DELETE FROM wp_usermeta WHERE meta_key IN ('pll_filter_content', '_pll_menu_item', 'pll_dismissed_notices', '_wp_attachment_image_alt', '_menu_item_menu_item_parent', '_pll_strings_translations', 'fallback', 'amazonS3_info', 'as3cf_filesize_total');
DELETE FROM wp_termmeta WHERE meta_key IN ('pll_filter_content', '_pll_menu_item', 'pll_dismissed_notices', '_wp_attachment_image_alt', '_menu_item_menu_item_parent', '_pll_strings_translations', 'fallback', 'amazonS3_info', 'as3cf_filesize_total');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pll_filter_content', '_pll_menu_item', 'pll_dismissed_notices', '_wp_attachment_image_alt', '_menu_item_menu_item_parent', '_pll_strings_translations', 'fallback', 'amazonS3_info', 'as3cf_filesize_total');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'description_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'description_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'description_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'description_%';

