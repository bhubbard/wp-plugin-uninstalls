-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_qt_redirects_map', 'qtranslate_default_language', 'qtranslate_enabled_languages', 'qtranslate_url_mode', '_qt_import_status', 'qtranslate_term_name', 'temp_qtranslate_terms', 'temp_hierarchy_terms', 'qtranslate_language_names', '_qt_importer_clean_has_run', 'qtranslate_flag_location', 'qtranslate_flags', 'qtranslate_locales', 'qtranslate_na_messages', 'qtranslate_date_formats', 'qtranslate_time_formats', 'qtranslate_use_strftime', 'qtranslate_ignore_file_types', 'qtranslate_detect_browser_language', 'qtranslate_hide_untranslated', 'qtranslate_auto_update_mo', 'qtranslate_next_update_mo', 'qtranslate_hide_default_language');
DELETE FROM wp_options WHERE option_name LIKE '%_children';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_qt_imported', '_qt_cleaned', '_qt_links_fixed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_qt_imported', '_qt_cleaned', '_qt_links_fixed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_qt_imported', '_qt_cleaned', '_qt_links_fixed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_qt_imported', '_qt_cleaned', '_qt_links_fixed');

