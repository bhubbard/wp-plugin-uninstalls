-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsr_last_changelog', 'wpsr_version', 'wpsr_since', 'wpsr_sharebar_settings', 'wpsr_button_settings', 'wpsr_general_settings', 'wpsr_social_icons_settings', 'wpsr_floating_sharebar_settings', 'wpsr_followbar_settings', 'wpsr_text_sharebar_settings');
DELETE FROM wp_options WHERE option_name LIKE 'wpsr_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpsr_post_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpsr_post_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpsr_post_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpsr_post_settings');

