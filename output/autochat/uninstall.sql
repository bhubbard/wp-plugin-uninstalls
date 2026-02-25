-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('achat_brand_color', 'achat_seondary_color', 'achat_text_color', 'far_plugin_settings', 'ch_def_reply_option', 'achat_greetings_option', 'ch_greeting_option', 'achat_default_reply_option', 'tawk_to_script', 'ch_brnd_name_option', 'ac_icon_image_option', 'enable_chat_feature');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('xxxx_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('xxxx_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('xxxx_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('xxxx_image');

