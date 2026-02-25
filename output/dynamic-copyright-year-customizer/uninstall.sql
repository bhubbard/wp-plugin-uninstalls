-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dyc_customizer_text_before', 'dyc_customizer_text_after', 'dyc_customizer_text_color', 'dyc_customizer_font_size', 'dyc_customizer_font_family', 'dyc_customizer_text_alignment', 'dyc_customizer_custom_css', 'dyc_customizer_start_year', 'dyc_customizer_copyright_symbol', 'dyc_customizer_company_url', 'dyc_customizer_dismiss_notice');

