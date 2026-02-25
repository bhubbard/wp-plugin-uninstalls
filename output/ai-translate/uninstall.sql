-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_translate_settings', 'ai_translate_slugs_schema_version', 'rewrite_rules', 'ai_translate_slug_warmup_done', 'ai_translate_rules_flushed_v1', 'ai_translate_rules_flushed_v2', 'ai_translate_cache_meta_populated', 'ai_translate_cache_meta_indexes_applied', 'ai_translate_rules_checked', 'ai_translate_cache_table_data', 'ai_translate_cache_meta_last_cleanup', 'ai_tr_slugs_schema', 'nav_menu', 'nav_menu_items', 'nav_menu_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ai_translate_original_slug', '_menu_item_is_language_switcher', '_menu_item_switcher_type', '_menu_item_show_flags', '_menu_item_show_codes', '_menu_item_title', '_menu_item_menu_item_parent', '_menu_item_object');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ai_translate_original_slug', '_menu_item_is_language_switcher', '_menu_item_switcher_type', '_menu_item_show_flags', '_menu_item_show_codes', '_menu_item_title', '_menu_item_menu_item_parent', '_menu_item_object');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ai_translate_original_slug', '_menu_item_is_language_switcher', '_menu_item_switcher_type', '_menu_item_show_flags', '_menu_item_show_codes', '_menu_item_title', '_menu_item_menu_item_parent', '_menu_item_object');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ai_translate_original_slug', '_menu_item_is_language_switcher', '_menu_item_switcher_type', '_menu_item_show_flags', '_menu_item_show_codes', '_menu_item_title', '_menu_item_menu_item_parent', '_menu_item_object');

