-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('verse_settings_verse_translate', 'verse_settings_upload_mp3', 'verse_advance_settings_rtl_main_content', 'verse_advance_settings_rtl_translated_content', 'verse_advance_settings_play_autoplay', 'verse_advance_settings_player_below_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('verse_settings_verse_translate', 'verse_settings_upload_mp3', 'verse_advance_settings_rtl_main_content', 'verse_advance_settings_rtl_translated_content', 'verse_advance_settings_play_autoplay', 'verse_advance_settings_player_below_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('verse_settings_verse_translate', 'verse_settings_upload_mp3', 'verse_advance_settings_rtl_main_content', 'verse_advance_settings_rtl_translated_content', 'verse_advance_settings_play_autoplay', 'verse_advance_settings_player_below_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('verse_settings_verse_translate', 'verse_settings_upload_mp3', 'verse_advance_settings_rtl_main_content', 'verse_advance_settings_rtl_translated_content', 'verse_advance_settings_play_autoplay', 'verse_advance_settings_player_below_content');

