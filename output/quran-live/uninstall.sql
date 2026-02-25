-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('template_quran_live', 'tpl_quran_live', 'background_quranlive_color', 'quran_live_languages', 'quran_live_recitator', 'quranlive_custum_css', 'quranlive-options');

