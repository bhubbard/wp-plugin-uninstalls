-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acfbs_fields_types', 'acfbs_whole_phrases', 'acfbs_whole_words', 'acfbs_lite_mode', 'acfbs_selected_mode');

