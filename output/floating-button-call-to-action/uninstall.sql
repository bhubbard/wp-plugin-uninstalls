-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cta_kit_button_style', 'cta_kit_button_color', 'cta_kit_enable_default_button', 'cta_kit_enable_page_post_buttons', 'cta_kit_default_button_link', 'cta_kit_default_button_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cta_kit_custom_button_link', 'cta_kit_custom_button_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('cta_kit_custom_button_link', 'cta_kit_custom_button_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('cta_kit_custom_button_link', 'cta_kit_custom_button_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cta_kit_custom_button_link', 'cta_kit_custom_button_text');

