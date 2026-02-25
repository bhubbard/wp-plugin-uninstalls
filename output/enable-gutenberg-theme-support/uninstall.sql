-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('egts_option_xl_size', 'egts_option_l_size', 'egts_option_m_size', 'egts_option_s_size', 'egts_option_xs_size', 'egts_option_primary_color', 'egts_option_secondary_color', 'egts_option_tertiary_color', 'egts_option_quaternary_color', 'egts_option_quinary_color', 'egts_select_unit_font_size', 'egts_max-width-gutenberg-editor-page', 'egts_egts_option_xl_size');

