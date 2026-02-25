-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cta_custom_class', '_cta_theme', '_cta_button_text', '_cta_button_url', '_cta_button_open_new_window');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cta_custom_class', '_cta_theme', '_cta_button_text', '_cta_button_url', '_cta_button_open_new_window');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cta_custom_class', '_cta_theme', '_cta_button_text', '_cta_button_url', '_cta_button_open_new_window');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cta_custom_class', '_cta_theme', '_cta_button_text', '_cta_button_url', '_cta_button_open_new_window');

