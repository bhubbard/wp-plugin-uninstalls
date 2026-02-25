-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quran_arabicfont', 'quran_wordspacing', 'quran_template', 'border_quran_color', 'quran_recitator', 'quran_languages', 'quran_changesuratxt', 'quran_changelangtxt', 'quran_changerecitatortxt', 'text_quran_title', 'background_quran_title', 'color_quran_number', 'background_quran_number', 'text_quran_trans', 'background_quran_trans', 'text_quran_arabic', 'background_quran_arabic', 'quran_custum_css', 'template_quran', 'verse_quran_number', 'quran-options');

