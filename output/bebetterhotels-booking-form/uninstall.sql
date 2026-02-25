-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bbh_url', 'bbh_customer', 'bbh_adults_field', 'bbh_childrens_field', 'bbh_show_childrens_field', 'bbh_calendar_theme', 'bbh_button_border_color', 'bbh_button_background_color', 'bbh_button_text_color');

