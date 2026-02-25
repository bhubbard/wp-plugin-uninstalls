-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('social_share_button_version', 'social_share_button_migrate_2_1_1', 'social_share_button_migrate_2_1_6', 'social_share_button_settings', 'social_share_button_tc_text', 'social_share_button_tc_themes', 'social_share_button_sites', 'social_share_button_total', 'social_share_button_theme', 'social_share_button_more_display', 'social_share_button_display_total_count', 'social_share_button_display', 'social_share_button_count_format');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('social_share_button_share_count', 'ssb_post_sites');
DELETE FROM wp_usermeta WHERE meta_key IN ('social_share_button_share_count', 'ssb_post_sites');
DELETE FROM wp_termmeta WHERE meta_key IN ('social_share_button_share_count', 'ssb_post_sites');
DELETE FROM wp_commentmeta WHERE meta_key IN ('social_share_button_share_count', 'ssb_post_sites');

