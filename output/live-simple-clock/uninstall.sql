-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tka_lsc_title', 'tka_lsc_format', 'tka_lsc_fuseau', 'tka_lsc_hidesecond', 'tka_lsc_font', 'tka_lsc_font_size', 'tka_lsc_font_color', 'tka_lsc_font_weight');

