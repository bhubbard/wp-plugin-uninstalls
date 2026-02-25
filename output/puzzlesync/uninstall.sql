-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chrmrtns_puzzlesync_enabled', 'chrmrtns_puzzlesync_auto_detect', 'chrmrtns_puzzlesync_enable_json_ld', 'chrmrtns_puzzlesync_show_flags', 'chrmrtns_puzzlesync_auto_menu_flags', 'chrmrtns_puzzlesync_menu_flags_display', 'chrmrtns_puzzlesync_languages', 'chrmrtns_puzzlesync_migration_version', 'chrmrtns_puzzlesync_enable_validation', 'chrmrtns_puzzlesync_check_url_accessibility', 'chrmrtns_puzzlesync_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('chrmrtns_puzzlesync_translation_group', 'chrmrtns_puzzlesync_hreflang_default', 'chrmrtns_puzzlesync_hreflang_en', 'chrmrtns_puzzlesync_hreflang_de');
DELETE FROM wp_usermeta WHERE meta_key IN ('chrmrtns_puzzlesync_translation_group', 'chrmrtns_puzzlesync_hreflang_default', 'chrmrtns_puzzlesync_hreflang_en', 'chrmrtns_puzzlesync_hreflang_de');
DELETE FROM wp_termmeta WHERE meta_key IN ('chrmrtns_puzzlesync_translation_group', 'chrmrtns_puzzlesync_hreflang_default', 'chrmrtns_puzzlesync_hreflang_en', 'chrmrtns_puzzlesync_hreflang_de');
DELETE FROM wp_commentmeta WHERE meta_key IN ('chrmrtns_puzzlesync_translation_group', 'chrmrtns_puzzlesync_hreflang_default', 'chrmrtns_puzzlesync_hreflang_en', 'chrmrtns_puzzlesync_hreflang_de');

