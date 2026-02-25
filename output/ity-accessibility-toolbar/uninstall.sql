-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ityacto_font_size', 'ityacto_contrast_enabled', 'ityacto_listen_enabled', 'ityacto_bg_color', 'ityacto_text_color', 'ityacto_default_font_size');

