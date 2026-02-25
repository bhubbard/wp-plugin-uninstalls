-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rezerwujestolik_places_array', 'rezerwujestolik_api_token', 'rezerwujestolik_button_bg_color', 'rezerwujestolik_button_text_color', 'rezerwujestolik_button_border_color', 'rezerwujestolik_button_text', 'rezerwujestolik_lang', 'rezerwujestolik_place_id', 'rezerwujestolik_accent_color', 'rezerwujestolik_log', 'rezerwujestolik_url');

