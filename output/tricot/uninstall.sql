-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tricot_force_default_lang_prefix', 'tricot_debug_level', 'tricot_crawl_delay', 'tricot_transtation_capture', 'tricot_language_switcher_options', 'tricot_license_key', 'tricot_api_key', 'tricot_automatic_options', 'tricot_active_languages', 'tricot_wizard_max_step', 'tricot_crawler_current', 'tricot_crawler_total', 'tricot_crawler_running', 'tricot_crawler_urls', 'tricot_crawler_seo', 'tricot_crawler_date', 'tricot_registered_domain', 'tricot_db_version', 'tricot_plan', 'tricot_credits', 'tricot_license_status', 'tricot_advanced_settings', 'tricot_encode_hash');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_tricot_display_style', '_menu_item_tricot_menu_style', '_menu_item_tricot_hide_current');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_tricot_display_style', '_menu_item_tricot_menu_style', '_menu_item_tricot_hide_current');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_tricot_display_style', '_menu_item_tricot_menu_style', '_menu_item_tricot_hide_current');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_tricot_display_style', '_menu_item_tricot_menu_style', '_menu_item_tricot_hide_current');

