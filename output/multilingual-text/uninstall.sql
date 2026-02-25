-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('multilingual_text_languages', 'multilingual_text_show_single', 'multilingual_text_flags_dir', 'multilingual_text_title_order', 'multilingual_text_flag_order', 'multilingual_text_flags_where');

